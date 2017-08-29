#!/usr/bin/env python3

import matplotlib.pyplot as plt
from pylab import *
from helper import *
import sys
import random
import os
import numpy as np


# input data
def plot_load(throughput_list, caption, output_folder):
    plt.figure()
    markers=["^", "8", "s", "h", "v", "D", "v"]

    colors=['#000000', '#253494', '#2c7fb8', '#41b6c4', '#a1dab4', '#ffffcc']
    ls = ['-', '--', ':']
    handlers=[]
    legends = []
    cnt = 0
    print throughput_list 
    for h, (type, contents, x_axis) in enumerate(throughput_list):
        avglat = [alat for (th, abort, alat, mlat, lat95, lat99, lat999, th_std, abort_std, al_std, ml_std, l95_std, l99_std, l999_std) in contents]
        laterr = [al_std for (th, abort, alat, mlat, lat95, lat99, lat999, th_std, abort_std, al_std, ml_std, l95_std, l99_std, l999_std) in contents]
        (name, prop0, prop1) = type
        if name == 'Calvin':
            mycolor= '#000000'
        else:
            mycolor = '#253494'

        if prop0 == 0:
            mymarker = "v"
        elif prop0 == 1:
            mymarker = "^" 
        elif prop0 == 10:
            mymarker = "8"
        elif prop0 == 50:
            mymarker = "s"

        if prop1 == 2:
            myls = '-'
        else:
            myls = '--'
        hlt = plt.errorbar(x_axis, avglat, yerr=laterr, color=mycolor, linewidth=1.5, marker=mymarker, linestyle=myls)
        handlers.append(hlt)
        legends.append(name+'-'+str(prop0)+'%'+str(prop1)+'p')
        cnt += 1

	plt.legend(handlers, legends, loc=0, labelspacing=0.1, handletextpad=0.15, borderpad=0.26)
	plt.xlabel('Committed txns/s')
	plt.ylabel('Latency (ms)')
	#plt.xlim([0, 300000])
	plt.ylim([0, 20])
	#plt.yscale("log")
	#plt.savefig(output_folder+'/'+caption+'.pdf', format='pdf', bbox_inches='tight')
	plt.savefig(output_folder+'/'+caption+'.png',  bbox_inches='tight')

