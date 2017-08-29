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
from plot_bar_multi import *

systype=1
benchtype=2
dist_percent=3
dep_percent=4
index_size=5
index_range=6
max_sc=7
max_pend=8
max_suspend=9

time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/dispatch/', time)
os.mkdir(output_folder)

if 1 == 2:
    dists=[0, 0.1]
    for dist in dists: 
        input_folder="./results/dispatch/1"
        full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
        calculate_avg_throughput(config_prop_dict1)

        series1 = get_data_series([('benchtype', 'ssmr-paxos'), ('distribute_percent', dist)], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        series2 = get_data_series([('benchtype', 'ssmr-skeen'), ('distribute_percent', dist)], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        series3 = get_data_series([('benchtype', 'ssmr-pedone'), ('distribute_percent', 0)], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)

        if series1 != []:
            series1 = ('Calvin', series1)
        if series2 != []:
            series2 = ('Skeen', series2)
        if series3 != []:
            series3 = ('S-SMR', series3)
        plot_bar([series1, series2], 'intra nodes, '+str(dist)+'% dist', output_folder)

nodes=[1]#,2,3,4,5]
dists=[0, 1, 10]
for dist in dists:
    for node in nodes: 
        #input_folder="./results/dispatch/multi_dc/"+str(node)
        input_folder="./results/dispatch/scalability/"
        full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
        calculate_avg_throughput(config_prop_dict1)

        series1 = get_data_series([('systype', 'ssmr-paxos'), ('distribute_percent', dist)], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        series2 = get_data_series([('systype', 'ssmr-skeen'), ('distribute_percent', dist)], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        series3 = get_data_series([('systype', 'ssmr-pedone'), ('distribute_percent', dist)], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)

        series1 = ('Calvin', series1)
        series2 = ('Skeen', series2)
        series3 = ('S-SMR', series3)
        plot_bar([series1, series2, series3], str(node)+' nodes, '+str(dist)+'% dist', output_folder)
