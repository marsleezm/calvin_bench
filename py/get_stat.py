#!/usr/bin/python
import os
import sys
from glob import glob

def isfloat(value):
  try:
    float(value)
    return True
  except ValueError:
    return False

def isint(value):
  try:
    int(value)
    return True
  except ValueError:
    return False

def get_rough_th(path, th_dict):
    # Opened a file 
    with open(path+'/output') as ff:
        content = ff.readlines()
    content = [x.strip() for x in content]
    content = [line for line in content if 'Completed' in line]
    for l in content:
        part=l[:3]
        if isint(part):
            node = int(part)
            if len(l.split("Completed")[1]) < 2:
                continue
            else:
                if isfloat(l.split("Completed")[1].split()[0]):
                    th = float(l.split("Completed")[1].split()[0])
                else:
                    continue
            if 'aborted' in l:
                if len(l.split(" txns/sec, ")) < 2:
                    continue
                else:
                    if isfloat(l.split(" txns/sec, ")[1].split(' txns/sec')[0]):
                        abort = float(l.split(" txns/sec, ")[1].split(' txns/sec')[0])
                    else:
                        continue
            else:
                if len(l.split(" txns/sec, ")) < 2:
                    continue
                else:
                    if isfloat(l.split(" txns/sec, ")[1].split(' transaction')[0]):
                        abort = float(l.split(" txns/sec, ")[1].split(' transaction')[0])
                    else:
                        continue

            if node in th_dict:
                (old_th, old_abort, cnt) = th_dict[node]
                th_dict[node]=(old_th+th, old_abort+abort, cnt+1)
            else:
                th_dict[node]=(th, abort, 1)

def get_precise_th(files, result_dict):
    for f in files:
        node = int(f.split('/')[-1].split('output.txt')[0])
        result_dict[node] = (0,0,0)
        for line in open(f):
            if line == 'THROUGHPUT\n':
                continue
            elif line == 'LATENCY\n':
                break
            else:
                if ',' in line:
                    (commit, abort, line_num) = result_dict[node]
                    result_dict[node] = (commit+float(line[:-1].split(',')[0]), abort+ float(line[:-1].split(',')[1]), line_num+1)

def get_latency(files, latency_dict):
    for f in files:
        node = int(f.split('/')[-1].split('output.txt')[0])
        latency_dict[node] = (0,0,0)
        is_latency = False
        for line in open(f):
            if line == 'LATENCY\n':
                is_latency = True
            elif is_latency == True:
                if ',' in line:
                    (process_latency, final_latency, num) = latency_dict[node]
                    process_latency += float(line[:-1].split(',')[0])
                    final_latency += float(line[:-1].split(',')[1])
                    latency_dict[node] = (process_latency, final_latency, num+1)

a_type=sys.argv[1]
folders=glob("./results/"+a_type+"/2*")
if folders == []:
	folders=glob(sys.argv[1]+"/2*")

for folder in folders:
    print folder
    files = glob(folder+"/*output.txt")
    result_dict = {} 
    latency_dict = {}
    if len(files) == 8:
        get_precise_th(files, result_dict)
    else:
        get_rough_th(folder, result_dict)
    
    get_latency(files,  latency_dict)

    th_output=open(folder+'/throughput', 'w')
    tt = 0
    ta = 0
    for k in result_dict.keys():
        print k
        (commit, abort, result_line) = result_dict[k] 
        if k in latency_dict and latency_dict[k] != (0, 0, 0):
            (process_latency, final_latency, lat_line) = latency_dict[k] 
            th_output.write('['+str(k)+'] commit: '+str(commit/result_line) +', abort: '+str(abort/result_line))
            th_output.write(', total latency: '+str(final_latency/lat_line)+', process latency: '+str(process_latency/lat_line))
            th_output.write('\n')
        else:
            th_output.write('['+str(k)+'] commit: '+str(commit/result_line) +', abort: '+str(abort/result_line))
            th_output.write('\n')

    sum_commit = sum([th for (th, abort, cnt) in result_dict.values()])
    sum_abort = sum([abort for (th, abort, cnt) in result_dict.values()])
    sum_commit_line = sum([cnt for (th, abort, cnt) in result_dict.values()])
    num_nodes = len(result_dict.keys())

    sum_plat = sum([plat for (plat, flat, cnt) in latency_dict.values()])
    sum_flat = sum([flat for (plat, flat, cnt) in latency_dict.values()])
    sum_lat_line = max(sum([cnt for (plat, flat, cnt) in latency_dict.values()]), 1)

    th_output.write('Total commit: '+str(sum_commit/sum_commit_line*num_nodes) +', abort: '+str(sum_abort/sum_commit_line*num_nodes))
    th_output.write('\n')
    th_output.write('Total latency is '+str(sum_flat/sum_lat_line)+', process latency: '+str(sum_plat/sum_lat_line))
    th_output.write('\n')
