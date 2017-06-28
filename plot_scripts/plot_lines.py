#!/usr/bin/env python3

import matplotlib.pyplot as plt
from pylab import *
from helper import *
import sys
import random
import os
import numpy as np


# input data

# plot_lines(series1, x_axis, "Dependent 0", output_folder)
def plot_lines(throughput_list, legend_list, x_labels, caption, output_folder):
	plt.figure()
#	 width = 0.35
#	 maxv=0
#	 handlers = []
#	 legend = list() 
#	 data_l = []
#	 dashed_ls = ['-', '--']
#	 line_index=0
	markers=["^", "8", "s", "h", "v", "D", "v"]

	colors=['#000000', '#253494', '#2c7fb8', '#41b6c4', '#a1dab4', '#ffffcc']
	ls = ['-', '--', ':']
	handlers=[]
	legends = []
	for h, throughput in enumerate(throughput_list):
		for i, (leg, th_tuple)  in enumerate(throughput):
			#(th, th_std, abort, abort_std) = th_tuple
			th_list = [th for (th, abort, th_std, abort_std) in th_tuple]
			th_std_list = [th_std for (th, abort, th_std, abort_std) in th_tuple]
			print th_tuple
			hlt  = plt.errorbar(x_labels, th_list, yerr=th_std_list, color=colors[i], linewidth=1.5, marker=markers[i], linestyle=ls[h])
			handlers.append(hlt)
			legends.append(legend_list[h]+''+str(leg))

	plt.legend(handlers, legends, loc=0, labelspacing=0.1, handletextpad=0.15, borderpad=0.26)
	plt.xlabel('Committed txns/s')
	plt.xlabel('Percent of distributed transactions')
    plt.ylim(0,1500)
	#plt.xscale("log", nonposx='clip')

	#plt.savefig(output_folder+'/'+caption+'.pdf', format='pdf', bbox_inches='tight')
	plt.savefig(output_folder+'/'+caption+'.jpg',  bbox_inches='tight')

