#!/usr/bin/python
import os
import sys
import shutil
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
    content = [line for line in content if 'Completed' in line]
    for i in range(len(content)):
	    if 'Completed 0 txns/sec, 0 transaction restart' in content[i] or 'Completed 0 txns/sec, 0 txns/sec aborted' in content[i]:
		    content[i] = 'NONE'
	    else:
		    break
    for i in xrange(len(content)-1, 0, -1):
        if 'Completed 0 txns/sec, 0 transaction restart' in content[i] or 'Completed 0 txns/sec, 0 txns/sec aborted' in content[i]:
			content[i] = 'NONE'
        else:
            break

    for l in content:
        part=l[:2]
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
                #print "Add th "+str(th)+", and abort "+str(abort)
                th_dict[node]=(old_th+th, old_abort+abort, cnt+1)
            else:
                th_dict[node]=(th, abort, 1)

def get_precise_th(files, result_dict):
    for f in files:
        node = int(f.split('/')[-1].split('output.txt')[0])
        result_dict[node] = (0,0,0)

        content = open(f).readlines()
        end_index = content.index('LATENCY\n')
        throughput_lines = content[1:end_index]
        ## Filter warming up throughput lines
        for i in range(len(throughput_lines)):
            if throughput_lines[i] == '0, 0\n':
                throughput_lines[i] = 'NONE'
            else:
                break
        for i in xrange(len(throughput_lines)-1, 0, -1):
            if throughput_lines[i] == '0, 0\n':
                throughput_lines[i] = 'NONE'
            else:
                break
		
        for line in throughput_lines:
            if line == 'NONE':
                continue
            else:
                if ',' in line:
                    (commit, abort, line_num) = result_dict[node]
                    result_dict[node] = (commit+float(line[:-1].split(',')[0]), abort+ float(line[:-1].split(',')[1]), line_num+1)

def get_latency(files, latency_dict):
    total_lat = 0
    total_count = 0
    for f in files:
        node = int(f.split('/')[-1].split('output.txt')[0])
        is_latency = False
        if node == 0:
            with open(f) as fl:
                lines = fl.readlines()
                if lines[-2][0] == 'S':
                    latency_dict[node] = lines[-3][:-1]
                    latency_dict['summary'] = lines[-1][:-1]
                else:
                    latencies = lines[-1][:-1].split(', ')
                    print latencies
                    latency_dict[node] = int(latencies[0])
                    total_lat += int(latencies[1])
                    total_count += int(latencies[2])
        else:
            with open(f) as fl:
                lines = fl.readlines()
                latency_dict[node] = lines[-1][:-1]
    latency_dict['summary'] = total_lat/total_count

a_type=sys.argv[1]
folders=glob("./results/"+a_type+"/201*")
if folders == []:
	folders=glob(sys.argv[1]+"/201*")

for folder in folders:
    #print folder
    files = glob(folder+"/*output.txt")
    if len(files) == 0:
        print folder+" crashed in the beginning, removing it!"
        shutil.rmtree(folder)
        continue
        
    result_dict = {} 
    latency_dict = {}
    #if len(files) == 8:
    get_precise_th(files, result_dict)
    #else:
    #    get_rough_th(folder, result_dict)
    
    print "Processing "+folder
    get_latency(files,  latency_dict)

    th_output=open(folder+'/nonzero_throughput', 'w')
    tt = 0
    ta = 0
    for k in result_dict.keys():
        #print k
        (commit, abort, result_line) = result_dict[k] 
        if k in latency_dict:
            th_output.write('['+str(k)+'] commit: '+str(commit/result_line) +', abort: '+str(abort/result_line))
            th_output.write(','+str(latency_dict[k]))
            th_output.write('\n')
        else:
            th_output.write('['+str(k)+'] commit: '+str(commit/result_line) +', abort: '+str(abort/result_line))
            th_output.write('\n')

    sum_commit = sum([th for (th, abort, cnt) in result_dict.values()])
    sum_abort = sum([abort for (th, abort, cnt) in result_dict.values()])
    sum_commit_line = sum([cnt for (th, abort, cnt) in result_dict.values()])
    num_nodes = len(result_dict.keys())


    if sum_commit_line != 0:
        th_output.write('Total commit: '+str(sum_commit/sum_commit_line*num_nodes) +', abort: '+str(sum_abort/sum_commit_line*num_nodes))
        th_output.write('\n')
        th_output.write('Total latency: '+str(latency_dict['summary']))
        th_output.write('\n')
