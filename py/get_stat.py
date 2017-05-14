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

a_type=sys.argv[1]
folders=glob("./results/"+a_type+"/2*")
if folders == []:
	folders=glob(sys.argv[1]+"/2*")
for folder in folders:
    files = glob(folder+"/*output.txt")
    total_commit = {}
    total_abort = {}
    total_commit_line = {}
    process_lat = {}
    final_lat = {}
    total_lat_line = {}
    for i, f in enumerate(files):
        print f
        in_th = False
        in_lat = False
        total_commit[i] = 0
        total_abort[i] = 0
        total_commit_line[i] = 0
        process_lat[i] = 0
        final_lat[i] = 0
        total_lat_line[i] = 0
        for line in open(f):
            if line == 'THROUGHPUT\n':
                in_th = True
            elif line == 'LATENCY\n':
                in_th = False
                in_lat = True
            else:
                if ',' in line:
                    if in_th == True:
                        total_commit[i] += float(line[:-1].split(',')[0])
                        total_abort[i] += float(line[:-1].split(',')[1])
                        total_commit_line[i] += 1
                    else:
                        process_lat[i] += float(line[:-1].split(',')[0])
                        final_lat[i] += float(line[:-1].split(',')[1])
                        total_lat_line[i] += 1
		
    th_output=open(folder+'/throughput', 'w')
    tt = 0
    ta = 0
    for k, v in total_commit.items():
        print k
        print v
        th_output.write('['+str(k)+'] commit: '+str(v/total_commit_line[k]) +', abort: '+str(total_abort[k]/total_commit_line[k]))
        th_output.write(', total latency: '+str(final_lat[k]/total_lat_line[k])+', process latency: '+str(process_lat[k]/total_lat_line[k]))
        tt += v/total_commit_line[k]
        ta += total_abort[k]/total_commit_line[k]
        th_output.write('\n')
    th_output.write('Total commit: '+str(tt) +', abort: '+str(ta))
    th_output.write('\n')
    th_output.write('Total latency is '+str(sum(final_lat)/sum(total_lat_line))+', process latency: '+str(sum(process_lat)/sum(total_lat_line)))
    th_output.write('\n')
