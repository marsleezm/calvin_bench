#!/usr/bin/env python3

import matplotlib.pyplot as plt
from pylab import *
from helper import *
import sys
import random
import os
import numpy as np


# input data
def plot_load(throughput_list, caption, output_folder, axis):
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
        hlt = axis.errorbar(x_axis, avglat, yerr=laterr, color=colors[h], linewidth=1.5, marker=markers[h], linestyle=ls[h])
        handlers.append(hlt)
        legends.append(type)
        cnt += 1

