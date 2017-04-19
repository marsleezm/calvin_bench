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
		content_str = f.read().replace('\n', '')
	return content_str

def parse_config(config_file):
	with open(config_file) as f:
		content = f.readlines()
	config_dict ={}
	config_dict['system_type']=content[0][:-1]
	config_dict['bench_type']=content[1][:-1]
	content = content[2:]
	for line in content:
		if '=' in line:
			line = line.replace(' ', '')
			line = line.replace('\n', '')
			[k, v] = line.split('=')
			if v[0].isdigit():
				config_dict[k]=get_form(v)
			else:
				config_dict[k]=v
	return config_dict

def init_full_dict():
	full_dict = {}
	full_dict['system_type'] ={}
	full_dict['system_type']['calvin']=[]
	full_dict['system_type']['spec_calvin']=[]
	full_dict['bench_type'] = {}
	full_dict['bench_type']['m']=[]
	full_dict['bench_type']['t']=[]
	full_dict['distribute_percent'] = {}
	full_dict['distribute_percent'][0] = []
	full_dict['dependent_percent'] = {}
	full_dict['index_num'] =dict()
	full_dict['index_size'] =dict()
	full_dict['rw_set_size'] =dict()
	full_dict['max_pend'] =dict()
	full_dict['max_suspend'] =dict()
	full_dict['max_sc'] =dict()
	return full_dict

def add_to_full_dict(full_dict, config_file, prop_dict):
	for key, value in prop_dict.items():
		if key in full_dict:
			if value in full_dict[key]:
				full_dict[key][value].append(config_file)
			else:
				full_dict[key][value] = [config_file]

def get_throughput(myfile):
	with open(myfile) as f:
		content = f.readlines()
	t = content[-1].split('throughput is ')[1]
	commit = t.split(',')[0]
	abort = t.split(',')[1].split('abort is ')[1]
	return (float(commit), float(abort))

# 
# def build_throughput_dict(input_folder):
# 	files=glob.glob(input_folder+"/*")
# 	full_dict = {}
# 	config_set = {}
# 	for f in files:
# 		config_file = os.path.join(f, "config")
# 		config_throughput = os.path.join(f, "throughput")
# 		(commit, abort) = get_throughput(config_throughput)
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
# 		(commit, abort) = get_throughput(config_throughput)
# 		full_dict[config_file] = (commit, abort)
# 	return full_dict

def build_config_dict(input_folder):
	files=glob.glob(input_folder+"/*")
	config_reverse_dict = init_full_dict()
	config_prop_dict = {}
	config_set = {}
	for f in files:
		config_file = os.path.join(f, "config")
		content_str = get_config_str(config_file)
		config_throughput = os.path.join(f, "throughput")
		(commit, abort) = get_throughput(config_throughput)
		
		if content_str in config_set:
			first_appear = config_set[content_str]
			print "Found repition for "+content_str+", original is "+first_appear 
			config_prop_dict[first_appear]['throughput'].append((commit, abort))
		else:
			config_set[content_str] = config_file
			config_dict = parse_config(config_file)
			add_to_full_dict(config_reverse_dict, config_file, config_dict)
			config_prop_dict[config_file] = config_dict
			config_prop_dict[config_file]['throughput'] = [(commit, abort)]

	return config_reverse_dict, config_prop_dict, config_set

def add_to_config_dict(config_reverse_dict, config_prop_dict, config_set, input_folder):
	files=glob.glob(input_folder+"/*")
	for f in files:
		config_file = os.path.join(f, "config")
		content_str = get_config_str(config_file)
		config_throughput = os.path.join(f, "throughput")
		(commit, abort) = get_throughput(config_throughput)
		
		if content_str in config_set:
			first_appear = config_set[content_str]
			print "Found repition for "+config_file+", original is "+first_appear 
			config_prop_dict[first_appear]['throughput'].append((commit, abort))
		else:
			config_set[content_str] = config_file
			config_dict = parse_config(config_file)
			add_to_full_dict(config_reverse_dict, config_file, config_dict)
			config_prop_dict[config_file] = config_dict
			config_prop_dict[config_file]['throughput'] = [(commit, abort)]

	return config_reverse_dict, config_prop_dict, config_set

def calculate_avg_throughput(dict):
	for key, d in dict.items():
		value = d['throughput']
		if len(value) == 1:
			[(commit, abort)] = value
			dict[key]['throughput'] = (commit, abort, 0, 0)
		else:
			commits = [c for (c, a) in value]
			aborts = [a for (c, a) in value]
			avgc = np.average(commits)
			avga = np.average(aborts)
			sc = np.std(commits)
			sa = np.std(aborts)
			print "Commit avg is" +str(avgc)+", avg aborts is "+str(avga) +", std c is "+str(sc)+", std a is "+str(sa)
			dict[key]['throughput'] = (avgc, avga, sc, sa)


def get_series(fixed_props, line_diff_prop, point_diff_prop, config_reverse_dict, config_prop_dict):
	exist_set = Set()
	## Find a set of dicts with fixed properties
	for (k, v) in fixed_props:
		new_set = Set(config_reverse_dict[k][v])
		if len(exist_set) == 0:
			exist_set = new_set
		else:
			exist_set.intersection_update(new_set)
	## Sort dicts in the set by line_diff_prop
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

def get_throughput_series(fixed_props, line_diff_prop, point_diff_prop, config_reverse_dict, config_prop_dict):
	series = get_series(fixed_props, line_diff_prop, point_diff_prop, config_reverse_dict, config_prop_dict)
	print series
	th_list = []
	x_axis = []
	x_set = False
	for prop, line_points in series.items():
		tl = []
		for l in line_points:
			tl.append(config_prop_dict[l]['throughput'])
			#print "Point prop is "+point_diff_prop+", "+str(config_prop_dict[l][point_diff_prop])
			if x_set == False:
				x_axis.append(config_prop_dict[l][point_diff_prop])
		x_set = True
		th_list.append((prop, tl))
	th_list.sort()

		
	return x_axis, th_list
	
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
