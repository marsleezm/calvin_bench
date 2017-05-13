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
	for f in files:
		in_th = False
		in_lat = True
		for line in open(f):
			if line == 'THROUGHPUT':
					
	
		
	path = f.split('output')[0]
	print path
	th_dict=dict()
	total_abort=0
	total_commit=0
	line_count=0
			

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
		try:
			th_output.write(k + ' throughput is '+str(t/l) +', abort is '+str(a/l))
		except:
			print "Some error!"
		th_output.write('\n')
	th_output.write('Average throughput is '+str(total_commit/max(1,line_count/3.0))+', abort is '+str(total_abort/max(1,line_count/3.0)))
	th_output.write('\n')
