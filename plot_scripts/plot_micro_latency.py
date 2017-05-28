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

dependent_percent=1
benchtype=2
dist_percent=3
dep_percent=4
index_size=5
index_range=6
max_sc=7
max_pend=8
max_suspend=9

#input_folder="/home/li/Repository/calvin_bench/results/tpcc/Apr17/t"
#input_folder="/home/li/Repository/calvin_bench/results/micro/resultApr18/"
#input_folder="/home/li/Repository/calvin_bench/results/micro/Apr19/"
#input_folder1="./results/micro/Apr20/Apr20-alot/"
#input_folder="/home/li/Repository/calvin_bench/results/micro/micro_calvin/"
input_folder="/home/li/Repository/calvin_bench/results/micro/all_micro/"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
calculate_avg_throughput(config_prop_dict1)

#full_config_dict2, config_prop_dict2, config_set2 = build_config_dict(input_folder)
#calculate_avg_throughput(config_prop_dict2)
time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/', time)
os.mkdir(output_folder)
legends=['calvin0%', 'calvin50%', 'calvin100%', 'sc0%', 'sc100%', 'aggrsc0%', 'aggrsc100%']

distribute_percent=[0, 0.01, 0.1, 1, 10, 20]
conflict_size=[1000,50000]
for dp in distribute_percent:
    for cf in conflict_size:
        x_axis, series11 = get_data_series([('distribute_percent', dp), ('benchtype', 'm'), ('index_size', cf), ('systype', 'calvin_general_recon')], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        x_axis, series12 = get_data_series([('distribute_percent', dp), ('benchtype', 'm'), ('index_size', cf), ('systype', 'spec_calvin')], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        x_axis, series13 = get_data_series([('distribute_percent', dp), ('benchtype', 'm'), ('index_size', cf), ('systype', 'aggr_spec_calvin')], 'dependent_percent', 'max_batch_size', full_config_dict1, config_prop_dict1)
        plot_load([series11, series12, series13], legends, x_axis, "dist"+str(dp)+","+str(cf), output_folder)
