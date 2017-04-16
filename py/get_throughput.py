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
b_type=sys.argv[2]
files=glob("./results/"+a_type+"/"+b_type+"/*/output")
for f in files:
	with open(f) as ff:
		content = ff.readlines()
	path = f.split('output')[0]
	print path
	content = [x.strip() for x in content] 
	content = [line for line in content if 'Completed' in line]
	th_dict=dict()
	total_abort=0
	total_commit=0
	line_count=0
	th_output=open(path+'throughput', 'w')
	for l in content:
		part=l[:3]
		if isfloat(l.split("Completed")[1].split()[0]):
			th = float(l.split("Completed")[1].split()[0])
		else:
			continue
		if b_type == 'spec_calvin':
			if isfloat(l.split(" txns/sec, ")[1].split(' txns/sec')[0]):
				abort = float(l.split(" txns/sec, ")[1].split(' txns/sec')[0])
			else:
				continue
		else:
			if isfloat(l.split(" txns/sec, ")[1].split(' transaction')[0]):
				abort = float(l.split(" txns/sec, ")[1].split(' transaction')[0])
			else:
				continue
			

		total_abort+=abort
		total_commit+=th
		line_count+=1
		if part in th_dict:
			(cnt, old_th, old_abort) = th_dict[part]
			th_dict[part]=(cnt+1, old_th+th, old_abort+abort)
		else:
			th_dict[part]=(0, 0, 0)
	for k, v in th_dict.items():
		(l, t, a) = v
		th_output.write(k + ' throughput is '+str(t/l) +', abort is '+str(a/l))
		th_output.write('\n')
	th_output.write('Average throughput is '+str(total_commit/max(1,line_count))+', abort is '+str(total_abort/max(1,line_count)))
	th_output.write('\n')
