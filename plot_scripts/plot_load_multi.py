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
def plot_load(throughput_list, throughput_list2, list2_legend, caption, output_folder):
    plt.figure()
    fig = plt.figure()
    #ax1 = plt.subplot2grid((3,1), (0,0))
    ax1 = plt.subplot2grid((2,1), (0,0))
    ax2 = plt.subplot2grid((2,1), (1,0))

    markers=["^", "*", "s", "h", "v", "D", "v", "."]

    colors=['#000000', '#253494', '#2c7fb8', '#41b6c4', '#a1dab4', '#8888cc', '#cccc88']
    ls = ['-', '--', ':', '-.']
    handlers=[]
    legends = []
    cnt = 0
    max_lat=0
    max_th=0
    #print throughput_list
    for h, (type, lines) in enumerate(throughput_list):
        for i, (leg, th_tuple, x_axis) in enumerate(lines):
            x_axis = [x*100*8 for x in x_axis]
            th_list = [th for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            th_err_list = [th_std for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            abort_rate_list = [abort_rate for (th, abort_rate, lat, process_lat, th_std, abort_rate_std, lat_std, pl_std) in th_tuple]
            abort_std_list = [abort_rate_std for (th, abort_rate, lat, process_lat, th_std, abort_rate_std, lat_std, pl_std) in th_tuple]
            lat_list = [lat for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            lat_err_list = [lat_std for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            max_th = max(max(th_list), max_th)
            max_lat = max(max(lat_list), max_lat)
            hlt = ax1.errorbar(x_axis, lat_list, yerr=lat_err_list, color=colors[cnt], linewidth=1.5, marker=markers[0], linestyle=ls[cnt])
            ax2.errorbar(x_axis, abort_rate_list, yerr=abort_std_list, color=colors[cnt], linewidth=1.5, marker=markers[0], linestyle=ls[cnt])
            handlers.append(hlt)
            legends.append(type)
        cnt += 1

    for h, (type, lines) in enumerate(throughput_list2):
        for i, (leg, th_tuple, x_axis) in enumerate(lines):
            x_axis = [x*100*8 for x in x_axis]
            th_list = [th for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            th_err_list = [th_std for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            abort_rate_list = [abort_rate for (th, abort_rate, lat, process_lat, th_std, abort_rate_std, lat_std, pl_std) in th_tuple]
            abort_std_list = [abort_rate_std for (th, abort_rate, lat, process_lat, th_std, abort_rate_std, lat_std, pl_std) in th_tuple]
            lat_list = [lat for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            lat_err_list = [lat_std for (th, abort, lat, process_lat, th_std, abort_std, lat_std, pl_std) in th_tuple]
            max_th = max(max(th_list), max_th)
            max_lat = max(max(lat_list), max_lat)
            hlt = ax1.errorbar(x_axis, lat_list, yerr=lat_err_list, color=colors[cnt], linewidth=1.5, marker=markers[i+1], linestyle=ls[cnt])
            ax2.errorbar(x_axis, abort_rate_list, yerr=abort_std_list, color=colors[cnt], linewidth=1.5, marker=markers[i+1], linestyle=ls[cnt])
            handlers.append(hlt)
            legends.append(type+" "+str(leg)+list2_legend)
        cnt += 1

    plt.legend(handlers, legends, loc=0, labelspacing=0.1, handletextpad=0.15, borderpad=0.26)
    plt.xlabel('Arrival rate')
    ax1.set_ylabel('Latency (ms)')
    ax2.set_ylabel('Abort rate')
    #ax1.set_xticklabels([])
    ax1.set_xticklabels([])
    ax1.set_ylim(0, 3000)
    ax2.set_ylim(0,1)
    #ax3.set_ylim(0, max_lat*1.05)
    plt.tight_layout(pad=1, w_pad=0, h_pad=-0.4)
    plt.savefig(output_folder+'/'+caption+'.pdf',  bbox_inches='tight')
