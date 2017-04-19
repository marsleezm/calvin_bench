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
def plot_lines(throughput, calvin_throughput, x_labels, caption, output_folder):
    plt.figure()
#     width = 0.35
#     maxv=0
#     handlers = []
#     legend = list() 
#     data_l = []
#     dashed_ls = ['-', '--']
#     line_index=0
    markers=["^", "8", "s", "h", "v", "D", "v"]

    colors=['#000000', '#253494', '#2c7fb8', '#41b6c4', '#a1dab4', '#ffffcc']
    handlers=[]
    legends = []
    for i, (leg, th_tuple)  in enumerate(throughput):
        #(th, th_std, abort, abort_std) = th_tuple
        th_list = [th for (th, th_std, abort, abort_std) in th_tuple]
        th_std_list = [th_std for (th, th_std, abort, abort_std) in th_tuple]
        hlt  = plt.errorbar([x for x in range(len(th_list))], th_list, yerr=th_std_list, color=colors[i], linewidth=1.5, marker=markers[i])
        handlers.append(hlt)
        legends.append(leg)
        
    for i, (leg, th_tuple)  in enumerate(calvin_throughput):
        #(th, th_std, abort, abort_std) = th_tuple
        th_list = [th for (th, th_std, abort, abort_std) in th_tuple]
        th_std_list = [th_std for (th, th_std, abort, abort_std) in th_tuple]
        hlt  = plt.errorbar([x for x in range(len(th_list))], th_list, yerr=th_std_list, color=colors[i], ls='--', linewidth=1.5, marker=markers[i])
        handlers.append(hlt)
        legends.append(leg)

    plt.legend(handlers, legends, loc=0, labelspacing=0.1, handletextpad=0.15, borderpad=0.26)
   # plt.ylim(0,1500)
    #plt.xscale("log", nonposx='clip')

    plt.savefig(output_folder+'/'+caption+'.pdf', format='pdf', bbox_inches='tight')

