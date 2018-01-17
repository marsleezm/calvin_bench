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

systype=1
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
#input_folder="/Users/liz/Documents/MyDocument/repositories/calvin_bench/results/May14"
#input_folder="./results/tpcc/all/"
#input_folder="results/June/tpcc/calvin_after_fix/all_recon"
#input_folder="results/June/tpcc/spec_calvinJune27/"
input_folder="results/tpcc-july29/"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
calculate_avg_throughput(config_prop_dict1)

time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/tpcc/', time)
os.mkdir(output_folder)
dist= [0, 1, 10, 50, 100]
for d in dist:
	series8 = get_data_series([('distribute_percent', d), ('benchtype', 't'), ('systype', 'calvin_less_recon')], 'all_recon', 'max_batch_size', full_config_dict1, config_prop_dict1)
	series81 = get_data_series([('distribute_percent', d), ('benchtype', 't'), ('systype', 'aggr_spec_calvin')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)
	series82 = get_data_series([('distribute_percent', d), ('benchtype', 't'), ('systype', 'ssmr')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)
	if series8 != []:
		series8 = [('calvin', series8)]
	if series81 != []:
		series81 = [('spec_calvin', series81)]
	if series82 != []:
		series82 = [('ssmr', series82)]
	plot_load(series8+series81+series82, "dist"+str(d), output_folder)


