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
def plot_bar(plot_list, caption, output_folder):
    plt.figure()
    fig, ax1 = plt.subplots()

    markers=["^", "*", "s", "h", "v", "D", "v", "."]

    colors=['#000000', '#253494', '#2c7fb8', '#41b6c4', '#a1dab4', '#8888cc', '#cccc88']
    ls = ['-', '--', ':', '-.']
    handlers=[]
    legends = []
    cnt = 0
    max_lat=0
    max_th=0
    #print throughput_list
    print plot_list
    offset = -3/4.0/2
    for h, (type, content) in enumerate(plot_list):
        if content != []:
            [(v, [th_tuple], whatever)]  = content
            (th, abort, alat, mlat, lat95, lat99, lat999, th_std, abort_std, al_std, ml_std, l95_std, l99_std, l999_std) = th_tuple

            hlt = ax1.bar(1+cnt/4.0+offset, alat, width=0.25, yerr=al_std, color=colors[cnt])
            ax1.bar(2+cnt/4.0+offset, mlat, width=0.25, yerr=ml_std, color=colors[cnt])
            ax1.bar(3+cnt/4.0+offset, lat95, width=0.25,  yerr=l95_std, color=colors[cnt])
            ax1.bar(4+cnt/4.0+offset, lat99, width=0.25, yerr=l99_std, color=colors[cnt])
            ax1.bar(5+cnt/4.0+offset, lat999, width=0.25,  yerr=l999_std, color=colors[cnt])
            print "Cnt is "+str(cnt)

            handlers.append(hlt)
            legends.append(type)
        cnt += 1

    plt.legend(handlers, legends, loc=0, labelspacing=0.1, handletextpad=0.15, borderpad=0.26)
    plt.xlabel('Types')
    ax1.set_ylabel('Latency (ms)')
    plt.xticks([1, 2, 3, 4, 5], ['Avg', 'Medium', '95%', '99%', '99.9%'])
    #ax3.set_ylim(0, max_lat*1.05)
    plt.tight_layout(pad=1, w_pad=0, h_pad=-0.4)
    #plt.savefig(output_folder+'/'+caption+'.pdf',  bbox_inches='tight')
    plt.savefig(output_folder+'/'+caption+'.png',  bbox_inches='tight')
