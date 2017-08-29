#!/usr/bin/env python

import matplotlib.pyplot as plt
from pylab import *
import sys
import random
import os
from itertools import chain
import numpy as np
import pandas as pd
import re
import glob
import matplotlib.gridspec as gridspec
from time import gmtime, strftime
from helper import *
from plot_load import *

systype=1
benchtype=2
dist_percent=3
dep_percent=4
index_size=5
index_range=6
max_sc=7
max_pend=8
max_suspend=9


fig = plt.figure()
axs = []
axs.append(plt.subplot2grid((1,4), (0,0)))
axs.append(plt.subplot2grid((1,4), (0,1)))
axs.append(plt.subplot2grid((1,4), (0,2)))
axs.append(plt.subplot2grid((1,4), (0,3)))

#input_folder="/home/li/Repository/calvin_bench/results/tpcc/Apr17/t"
#input_folder="/home/li/Repository/calvin_bench/results/micro/resultApr18/"
#input_folder="/home/li/Repository/calvin_bench/results/micro/Apr19/"
#input_folder1="./results/micro/Apr20/Apr20-alot/"
#input_folder="/Users/liz/Documents/MyDocument/repositories/calvin_bench/results/May14"
input_folder="./results/dispatch/inter-dc/"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
calculate_avg_throughput(config_prop_dict1)

dists=[0, 0.1, 1, 10]
time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/', time)
os.mkdir(output_folder)

sublab_size=12
labelsize=17
xlim=[(0,80001,20000), (0, 3201, 800), (0,401,100), (0,41,10)]

labels=['a) 0% distributed txs', 'b) 0.1% distributed txs', 'c) 1% distributed txs', 'd) 10% distributed txs']
for h, dist in enumerate(dists):
    series1 = get_data_series([('distribute_percent', dist), ('benchtype', 'm')], 'systype', 'max_batch_size', ['batch_duration'], full_config_dict1, config_prop_dict1)
    for i, (name, value, point_prop, other_prop) in enumerate(series1):
        new_point_prop = []
        for j, v in enumerate(point_prop):
            new_point_prop.append(v*2/other_prop[0][j])
        if name == 'ssmr-paxos':
            series1[i] = ('calvin', value, new_point_prop) 
        else:
            series1[i] = ('genepi', value, new_point_prop) 

    #plt.xlabel('Arrival rate (txns/s)')
    #plt.ylabel('Latency (ms)')
    axs[h].set_ylim([0, 1500])
    if h != 0:
        axs[h].yaxis.set_major_formatter(NullFormatter())
    (begin, end, interval) = xlim[h]
    major_ticks = np.arange(begin, end, interval)
    axs[h].set_xticks(major_ticks)
    if h == 0:
        axs[h].set_xlim([10000, end+5000])
    else:
        axs[h].set_xlim([interval*3/4, end+interval/4])
    axs[h].set_ylim([0, 1500])
    axs[h].set_xlabel(labels[h], fontsize=sublab_size)
    axs[h].yaxis.grid(True)
    axs[h].xaxis.grid(True)
    plot_load(series1, "dist"+str(dist), output_folder, axs[h])

axs[0].set_ylabel('Latency (ms)', fontsize=labelsize)

plt.tight_layout(pad=3, w_pad=-2.5, h_pad=2)
#plt.subplots_adjust(top=0.9)
fig.set_size_inches(20, 4.5)
plt.figtext(0.47, 0.00, "Arrival rate (txs/sec)", fontsize=labelsize)
#fig.legend(handlers, legends, loc=0, labelspacing=0.1, handletextpad=0.15, borderpad=0.26)
plt.savefig(output_folder+'/geo-distribution.pdf',  bbox_inches='tight')
