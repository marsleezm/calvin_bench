#!/usr/bin/env python3

from sets import Set
import glob
import os
import numpy as np

def isfloat(x):
    try:
        a = float(x)
    except ValueError:
        return False
    else:
        return True

def isint(x):
    try:
        a = float(x)
        b = int(a)
    except ValueError:
        return False
    else:
        return a == b

def get_form(x):
	if isfloat(x):
		if isint(x):
			return int(x)
		else:
			return float(x)
	else:
		return x

def get_config_str(config_file):
	with open(config_file) as f:
		content_str = f.readline().replace('\n', '')
	return content_str

def parse_config(config_file):
	with open(config_file) as f:
		content = f.readlines()
	config_dict ={}
	content[0] = content[0].replace('\n', '')
	content[1] = content[1].replace('\n', '')

	keys = filter(bool, content[1].split(' '))
	values = filter(bool, content[0].split(' '))
	for i, key in enumerate(keys):
		if i >= len(values):
			config_dict[key]=0
		else:
			if values[i][0].isdigit():
				config_dict[key]=get_form(values[i])
			else:
				config_dict[key]=values[i]
	return config_dict

def init_full_dict():
    full_dict = {}
    full_dict['systype'] ={}
    full_dict['systype']['calvin']=[]
    full_dict['systype']['spec_calvin']=[]
    full_dict['systype']['aggr_spec_calvin']=[]
    full_dict['benchtype'] = {}
    full_dict['benchtype']['m']=[]
    full_dict['benchtype']['t']=[]
    full_dict['distribute_percent'] = {}
    full_dict['distribute_percent'][0] = []
    full_dict['dependent_percent'] = {}
    full_dict['multi_txn_num_parts'] = {} 
    full_dict['index_num'] =dict()
    full_dict['index_size'] =dict()
    full_dict['rw_set_size'] =dict()
    full_dict['max_pend'] =dict()
    full_dict['max_suspend'] =dict()
    full_dict['max_batch_size'] =dict()
    full_dict['max_sc'] =dict()
    return full_dict

def add_to_full_dict(full_dict, config_file, prop_dict):
    for key, value in prop_dict.items():
        if key in full_dict:
            if value in full_dict[key]:
                full_dict[key][value].append(config_file)
            else:
                full_dict[key][value] = [config_file]

def get_data(myfile):
    commit = 0
    abort = 0
    latency = 0
    process_lat = 0
    for line in open(myfile):
        if 'Total commit' in line:
            commit = float(line.split(',')[0].split(': ')[1])
            abort = float(line.split(',')[1].split(': ')[1]) 
        elif 'Total latency' in line:
            if line.count(',') == 1:
                avg_lat = float(line.split(',')[0].split('is ')[1])/1000
                med_lat = 0
                lat_95 = 0
                lat_99 = 0
                lat_999 = 0 
            else:
                avg_lat = float(line.split(', ')[0].split(':')[1])
                med_lat = float(line.split(', ')[1])
                lat_95 = float(line.split(', ')[2])
                lat_99 = float(line.split(', ')[3])
                lat_999 = float(line.split(', ')[4])
    return (commit, abort, avg_lat, med_lat, lat_95, lat_99, lat_999)

# 
# def build_throughput_dict(input_folder):
# 	files=glob.glob(input_folder+"/*")
# 	full_dict = {}
# 	config_set = {}
# 	for f in files:
# 		config_file = os.path.join(f, "config")
# 		config_throughput = os.path.join(f, "throughput")
# 		(commit, abort) = get_data(config_throughput)
# 		content = get_config(config_file)
# 		if content in config_set:
# 			first_appear = config_set[content]
# 			full_dict[first_appear].append((commit, abort))
# 		else:
# 			full_dict[config_file] = [(commit, abort)]
# 			config_set[content] = config_file
# 	return full_dict
# 
# def add_to_throughput_dict(config_set, full_dict, input_folder):
# 	files=glob.glob(input_folder+"/*")
# 	for f in files:
# 		config_file = os.path.join(f, "config")
# 		config_throughput = os.path.join(f, "throughput")
# 		(commit, abort) = get_data(config_throughput)
# 		full_dict[config_file] = (commit, abort)
# 	return full_dict

def build_config_dict(input_folder):
	files=glob.glob(input_folder+"/2*")
	config_reverse_dict = init_full_dict()
	config_prop_dict = {}
	config_set = {}
	for f in files:
		config_file = os.path.join(f, "config")
		content_str = get_config_str(config_file)
		config_throughput = os.path.join(f, "nonzero_throughput")
		(commit, abort, avg_latency, med_lat, lat_95, lat_99, lat_999) = get_data(config_throughput)
		
		if content_str in config_set:
			first_appear = config_set[content_str]
			#print "Found repition for "+content_str+", original is "+first_appear 
			config_prop_dict[first_appear]['throughput'].append((commit, abort, avg_latency, med_lat, lat_95, lat_99, lat_999))
			config_prop_dict[first_appear]['config'] = content_str
		else:
			config_set[content_str] = config_file
			config_dict = parse_config(config_file)
			add_to_full_dict(config_reverse_dict, config_file, config_dict)
			config_prop_dict[config_file] = config_dict
			config_prop_dict[config_file]['throughput'] = [(commit, abort, avg_latency, med_lat, lat_95, lat_99, lat_999)]
			config_prop_dict[config_file]['config'] = content_str

	return config_reverse_dict, config_prop_dict, config_set

def add_to_config_dict(config_reverse_dict, config_prop_dict, config_set, input_folder):
	files=glob.glob(input_folder+"/22*")
	for f in files:
		config_file = os.path.join(f, "config")
		content_str = get_config_str(config_file)
		config_throughput = os.path.join(f, "nonzero_throughput")
		(commit, abort, avg_latency, med_lat, lat_95, lat_99, lat_999) = get_data(config_throughput)
		
		if content_str in config_set:
			first_appear = config_set[content_str]
			print("Found repition for "+config_file+", original is "+first_appear) 
			config_prop_dict[first_appear]['throughput'].append((commit, abort, avg_latency, med_lat, lat_95, lat_99, lat_999))
			config_prop_dict[first_appear]['config'] = content_str
		else:
			config_set[content_str] = config_file
			config_dict = parse_config(config_file)
			add_to_full_dict(config_reverse_dict, config_file, config_dict)
			config_prop_dict[config_file] = config_dict
			config_prop_dict[config_file]['throughput'] = [(commit, abort, avg_latency, med_lat, lat_95, lat_99, lat_999)]
			config_prop_dict[config_file]['config'] = content_str

	return config_reverse_dict, config_prop_dict, config_set

def calculate_avg_throughput(dict):
	for key, d in dict.items():
		value = d['throughput']
		if len(value) == 1:
			[(commit, abort, avg_latency, med_lat, lat_95, lat_99, lat_999)] = value
			dict[key]['throughput'] = (commit, abort/(commit+abort), avg_latency, med_lat, lat_95, lat_99, lat_999, 0, 0, 0, 0, 0, 0, 0)
		else:
			commits = [c for (c, a, al, ml, l95, l99, l999) in value]
			aborts = [a for (c, a, al, ml, l95, l99, l999) in value]
			abort_rate = [a/(c+a) for a, c in zip(aborts, commits)]
			ls = [al for (c, a, al, ml, l95, l99, l999) in value]
			mls = [ml for (c, a, al, ml, l95, l99, l999) in value]
			l95s = [l95 for (c, a, al, ml, l95, l99, l999) in value]
			l99s = [l99 for (c, a, al, ml, l95, l99, l999) in value]
			l999s = [l999 for (c, a, al, ml, l95, l99, l999) in value]
			avgc = np.average(commits)
			avga = np.average(abort_rate)
			avgls = np.average(ls)
			avgmls = np.average(mls)
			avgl95s = np.average(l95s)
			avgl99s = np.average(l99s)
			avgl999s = np.average(l999s)
			sc = np.std(commits)
			sa = np.std(abort_rate)
			sl = np.std(ls)
			sml = np.std(mls)
			sl95s = np.std(l95s)
			sl99s = np.std(l99s)
			sl999s = np.std(l999s)
			if sc*8 > avgc:
				print key+" has huge variance!"
			#print "Commit avg is" +str(avgc)+", avg aborts is "+str(avga) +", std c is "+str(sc)+", std a is "+str(sa)
			dict[key]['throughput'] = (avgc, avga, avgls, avgmls, avgl95s, avgl99s, avgl999s, sc, sa, sl, sml, sl95s, sl99s, sl999s)

def complex_get(k, v, dict):
    prop = v[1:]
    full_set = Set()
    for values, lists in dict[prop].items():
        if values in dict[k]:
            s1 = Set(lists)
            s2 = Set(dict[k][values])
            full_set = full_set.union(s1.intersection(s2))
    return full_set

def get_series(fixed_props, line_diff_prop, point_diff_prop, config_reverse_dict, config_prop_dict):
	# Include all configurations that safisfy fixed_props
    exist_set = Set()
    set_inited = False
    for (k, v) in fixed_props:
        if isfloat(v) == False and '=' == v[0]:
            s = complex_get(k, v, config_reverse_dict)
            new_set = s 
        else:
			# The set contains all configuration has value 'v' for property 'k'
            if v in config_reverse_dict[k]:
                new_set = Set(config_reverse_dict[k][v])
            else:
                return {} 
        if set_inited == False:
            set_inited = True
            exist_set = new_set
        else:
			# Intersect to only take configs with all props satisfied
            exist_set.intersection_update(new_set)

    ## Sort dicts in the set by line_diff_prop
	## Each entry to line_dict consists of
	## key is v: the value of a property
	## value is list of configs that has this value
    line_dict = {}
    for d in exist_set:
        v = config_prop_dict[d][line_diff_prop]
        if v in line_dict:	
            line_dict[v].append(d) #config_prop_dict[d])
        else:
            line_dict[v] = [d] #config_prop_dict[d]]
	## Sort line points according to point_diff_prop
    for k, v in line_dict.items():
        line_dict[k] = sorted(line_dict[k], key=lambda l:config_prop_dict[l][point_diff_prop])
    return line_dict

def get_data_series(fixed_props, line_diff_prop, point_diff_prop, config_reverse_dict, config_prop_dict):
    series = get_series(fixed_props, line_diff_prop, point_diff_prop, config_reverse_dict, config_prop_dict)
    config_list = {} 
    for v, l in series.items():
        config_list[v] = []
        for f in l:
            config_list[v].append(config_prop_dict[f]['config'])

    lines = []
    x_axis = []
    for prop, line_points in series.items():
        tl = []
        x_axis = []
        for l in line_points:
            tl.append(config_prop_dict[l]['throughput'])
            x_axis.append(config_prop_dict[l][point_diff_prop])
        lines.append((prop, tl, x_axis))
    lines.sort()
    return lines 

def get_data_series(fixed_props, line_diff_prop, point_diff_prop, other_props, config_reverse_dict, config_prop_dict):
    series = get_series(fixed_props, line_diff_prop, point_diff_prop, config_reverse_dict, config_prop_dict)
    config_list = {} 
    for v, l in series.items():
        config_list[v] = []
        for f in l:
            config_list[v].append(config_prop_dict[f]['config'])

    lines = []
    x_axis = []
    for prop, line_points in series.items():
        tl = []
        x_axis = []
        prop_values = [[] for i in range(len(other_props))]
        for l in line_points:
            tl.append(config_prop_dict[l]['throughput'])
            x_axis.append(config_prop_dict[l][point_diff_prop])
            for i in range(len(other_props)):
                prop_values[i].append(config_prop_dict[l][other_props[i]])
        lines.append((prop, tl, x_axis, prop_values))
    lines.sort()
    return lines 
	
def to_string(dict):
	dict1 = {}
	first = True
	keys = ""
	for k, ds in dict.items():
		dict1[k] = []
		for d in ds:
			vstr = ""
			for k1, v1 in d.items():
				vstr += str(v1) + "_"
				if first:
					keys += k1 +","
			vstr = vstr[:-1]
			first = False
			dict1[k].append(vstr)
	return keys, dict1		
