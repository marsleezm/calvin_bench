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
from plot_load_multi import *
from test.test_support import change_cwd

systype=1
benchtype=2
dist_percent=3
dep_percent=4
index_size=5
index_range=6
max_sc=7
max_pend=8
max_suspend=9

#input_folder="./results/June/micro/"
input_folder="./results/July/july11/"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
calculate_avg_throughput(config_prop_dict1)

time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/micro/', time)
os.mkdir(output_folder)

#ds=[0, 0.01, 0.1, 1, 10, 20, 50, 100]
ds=[0, 1, 10, 50]
#ds=[100]
confs=[50000, 1000]
for d in ds: 
    for conf in confs:
        series111 = get_data_series([('distribute_percent', d), ('benchtype', 'm'), ('systype', 'calvin_less_recon'), ('index_size', conf)], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        series112 = get_data_series([('distribute_percent', d), ('benchtype', 'm'), ('systype', 'spec_calvin'), ('index_size', conf)], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        series113 = get_data_series([('distribute_percent', d), ('benchtype', 'm'), ('systype', 'ssmr')], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        if series111 != []:
           series111 = [('calvin_dep', series111)]
        if series112 != []:
            series112 = [('speccalvin_dep', series112)]
        if series113 != []:
            series113 = [('ssmr_dep', series113)]
		#if series111 == [] and series112 != []:
		#	series111 = [[], [], []]
		#	plot_load([series111+series112], ['Calvin 0%dep', 'Calvin 50%dep', 'Calvin 100%dep', 'SpecCalvin 0%dep', 'SpecCalvin 50%dep', 'SpecCalvin 100%dep'], "dist"+str(d)+", conf"+str(conf), output_folder)
		#elif series111 != [] and series112 != []:
        plot_load(series112+series113+series111, "dist"+str(d)+", conf"+str(conf), output_folder)
