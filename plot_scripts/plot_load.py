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
def plot_load(throughput_list, legend_list, x_labels, caption, output_folder):
    plt.figure()
    markers=["^", "8", "s", "h", "v", "D", "v"]

    colors=['#000000', '#253494', '#2c7fb8', '#41b6c4', '#a1dab4', '#ffffcc']
    ls = ['-', '--', ':']
    handlers=[]
    legends = []
    for h, throughput in enumerate(throughput_list):
        for i, (leg, th_tuple) in enumerate(throughput):
            th_list = [th for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            lat_list = [lat/1000 for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            hlt,  = plt.plot(th_list, lat_list, color=colors[i], linewidth=1.5, marker=markers[i], linestyle=ls[h])
            handlers.append(hlt)
            #print legend_list[h]
            legends.append(legend_list[i])

	plt.legend(handlers, legends, loc=0, labelspacing=0.1, handletextpad=0.15, borderpad=0.26)
	plt.xlabel('Committed txns/s')
	plt.ylabel('Latency (ms)')
	plt.xlim([0, 250000])
	#plt.ylim([0, 5000])
	plt.yscale("log")
	plt.savefig(output_folder+'/'+caption+'.pdf', format='pdf', bbox_inches='tight')
	#plt.savefig(output_folder+'/'+caption+'.jpg',  bbox_inches='tight')
