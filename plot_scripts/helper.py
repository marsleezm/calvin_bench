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
            latency = float(line.split(',')[0].split('is ')[1])
            process_lat = float(line.split(',')[1].split(': ')[1]) 
    return (commit, abort, latency, process_lat)

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
		(commit, abort, latency, process_lat) = get_data(config_throughput)
		
		if content_str in config_set:
			first_appear = config_set[content_str]
			#print "Found repition for "+content_str+", original is "+first_appear 
			config_prop_dict[first_appear]['throughput'].append((commit, abort, latency, process_lat))
			config_prop_dict[first_appear]['config'] = content_str
		else:
			config_set[content_str] = config_file
			config_dict = parse_config(config_file)
			add_to_full_dict(config_reverse_dict, config_file, config_dict)
			config_prop_dict[config_file] = config_dict
			config_prop_dict[config_file]['throughput'] = [(commit, abort, latency, process_lat)]
			config_prop_dict[config_file]['config'] = content_str

	return config_reverse_dict, config_prop_dict, config_set

def add_to_config_dict(config_reverse_dict, config_prop_dict, config_set, input_folder):
	files=glob.glob(input_folder+"/22*")
	for f in files:
		config_file = os.path.join(f, "config")
		content_str = get_config_str(config_file)
		config_throughput = os.path.join(f, "nonzero_throughput")
		(commit, abort, latency, process_lat) = get_data(config_throughput)
		
		if content_str in config_set:
			first_appear = config_set[content_str]
			print("Found repition for "+config_file+", original is "+first_appear) 
			config_prop_dict[first_appear]['throughput'].append((commit, abort, latency, process_lat))
			config_prop_dict[first_appear]['config'] = content_str
		else:
			config_set[content_str] = config_file
			config_dict = parse_config(config_file)
			add_to_full_dict(config_reverse_dict, config_file, config_dict)
			config_prop_dict[config_file] = config_dict
			config_prop_dict[config_file]['throughput'] = [(commit, abort, latency, process_lat)]
			config_prop_dict[config_file]['config'] = content_str

	return config_reverse_dict, config_prop_dict, config_set

def calculate_avg_throughput(dict):
	for key, d in dict.items():
		value = d['throughput']
		if len(value) == 1:
			[(commit, abort, latency, process_lat)] = value
			dict[key]['throughput'] = (commit, abort/(commit+abort), latency/1000, process_lat/1000, 0, 0, 0, 0)
		else:
			commits = [c for (c, a, l, pl) in value]
			aborts = [a for (c, a, l, pl) in value]
			abort_rate = [a/(c+a) for a, c in zip(aborts, commits)]
			ls = [l/1000 for (c, a, l, pl) in value]
			pls = [pl/1000 for (c, a, l, pl) in value]
			avgc = np.average(commits)
			avga = np.average(abort_rate)
			avgl = np.average(ls)
			avgpl = np.average(pls)
			sc = np.std(commits)
			sa = np.std(abort_rate)
			sl = np.std(ls)
			spl = np.std(pls)
			if sc*8 > avgc:
				print key+" has huge variance!"
			#print "Commit avg is" +str(avgc)+", avg aborts is "+str(avga) +", std c is "+str(sc)+", std a is "+str(sa)
			dict[key]['throughput'] = (avgc, avga, avgl, avgpl, sc, sa, sl, spl)

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
    print config_list
    print series

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
