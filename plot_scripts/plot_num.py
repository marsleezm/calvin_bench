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
def plot_num(throughput_list, legend_list, x_labels, caption, output_folder):
    plt.figure()
    markers=["^", "8", "s", "h", "v", "D", "v"]

    colors=['#000000', '#253494', '#2c7fb8', '#41b6c4', '#a1dab4', '#ffffcc']
    ls = ['-', '--', ':']
    handlers=[]
    legends = []
    ms = 10
    ls= 15
    cnt = 0
    for i, throughput in enumerate(throughput_list):
        hlt,  = plt.plot(x_labels, throughput, color=colors[i], linewidth=3, marker=markers[i], markersize=ms)
        handlers.append(hlt)
        legends.append(legend_list[cnt])
        cnt += 1

	plt.legend(handlers, legends, loc=0, labelspacing=0.1, handletextpad=0.15, borderpad=0.26, fontsize=ls)
	plt.xlabel('Number of cores')
	plt.ylabel('Committed txns/s')
	#plt.xlim([0, 300000])
	plt.ylim([0, 120000])
	#plt.yscale("log")
	#plt.savefig(output_folder+'/'+caption+'.pdf', format='pdf', bbox_inches='tight')
	plt.savefig(output_folder+'/'+caption+'.png',  bbox_inches='tight')
