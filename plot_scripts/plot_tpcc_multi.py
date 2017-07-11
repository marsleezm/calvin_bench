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
input_folder="results/July/tpcc/"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
calculate_avg_throughput(config_prop_dict1)

#full_config_dict2, config_prop_dict2, config_set2 = build_config_dict(input_folder)
#calculate_avg_throughput(config_prop_dict2)

#series1 = get_data_series([('distribute_percent', 0), ('benchtype', 't')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series2 = get_data_series([('distribute_percent', 0.01), ('benchtype', 'm')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series3 = get_data_series([('distribute_percent', 0.1), ('benchtype', 't')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series4 = get_data_series([('distribute_percent', 1), ('benchtype', 't')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series5 = get_data_series([('distribute_percent', 10), ('benchtype', 't')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series6 = get_data_series([('distribute_percent', 20), ('benchtype', 't')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series7 = get_data_series([('distribute_percent', 50), ('benchtype', 't')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series8 = get_data_series([('distribute_percent', 100), ('benchtype', 't')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
series11 = get_data_series([('distribute_percent', 0), ('benchtype', 't'), ('systype', 'aggr_spec_calvin')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series21 = get_data_series([('distribute_percent', 0.01), ('benchtype', 't'), ('systype', 'aggr_spec_calvin')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series31 = get_data_series([('distribute_percent', 0.1), ('benchtype', 't'), ('systype', 'aggr_spec_calvin')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)
series41 = get_data_series([('distribute_percent', 1), ('benchtype', 't'), ('systype', 'aggr_spec_calvin')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)
series51 = get_data_series([('distribute_percent', 10), ('benchtype', 't'), ('systype', 'aggr_spec_calvin')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series61 = get_data_series([('distribute_percent', 20), ('benchtype', 't'), ('systype', 'aggr_spec_calvin')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series71 = get_data_series([('distribute_percent', 50), ('benchtype', 't'), ('systype', 'aggr_spec_calvin')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)
series81 = get_data_series([('distribute_percent', 100), ('benchtype', 't'), ('systype', 'aggr_spec_calvin')], 'multi_txn_num_parts', 'max_batch_size', full_config_dict1, config_prop_dict1)

series1 = get_data_series([('distribute_percent', 0), ('benchtype', 't'), ('systype', 'calvin_less_recon')], 'all_recon', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series2 = get_data_series([('distribute_percent', 0.01), ('benchtype', 't'), ('systype', 'calvin_less_recon')], 'all_recon', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series3 = get_data_series([('distribute_percent', 0.1), ('benchtype', 't'), ('systype', 'calvin_less_recon')], 'all_recon', 'max_batch_size', full_config_dict1, config_prop_dict1)
series4 = get_data_series([('distribute_percent', 1), ('benchtype', 't'), ('systype', 'calvin_less_recon')], 'all_recon', 'max_batch_size', full_config_dict1, config_prop_dict1)
series5 = get_data_series([('distribute_percent', 10), ('benchtype', 't'), ('systype', 'calvin_less_recon')], 'all_recon', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series6 = get_data_series([('distribute_percent', 20), ('benchtype', 't'), ('systype', 'calvin_less_recon')], 'all_recon', 'max_batch_size', full_config_dict1, config_prop_dict1)
#series7 = get_data_series([('distribute_percent', 50), ('benchtype', 't'), ('systype', 'calvin_less_recon')], 'all_recon', 'max_batch_size', full_config_dict1, config_prop_dict1)
series8 = get_data_series([('distribute_percent', 100), ('benchtype', 't'), ('systype', 'calvin_less_recon')], 'all_recon', 'max_batch_size', full_config_dict1, config_prop_dict1)

#print series6
#print series61
#print series6+series61
#x_axis2, series2 = get_data_series([('system_type', 'spec_calvin'), ('max_pend', '=max_sc')], 'distribute_percent', 'max_sc', full_config_dict, config_prop_dict)

time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/tpcc/', time)
os.mkdir(output_folder)

plot_load([series1+series11], ['Calvin', 'CalvinAllRecon', 'SpecCalvin'], "dist0", output_folder)
#plot_load([series2+series21], ['Calvin', 'CalvinAllRecon', 'SpecCalvin'], "dist0.01", output_folder)
#plot_load([series3+series31], ['Calvin', 'CalvinAllRecon', 'SpecCalvin'], "dist0.1", output_folder)
plot_load([series4+series41], ['Calvin', 'CalvinAllRecon', 'SpecCalvin'], "dist1", output_folder)
plot_load([series5+series51], ['Calvin', 'CalvinAllRecon', 'SpecCalvin'], "dist10", output_folder)
#plot_load([series6+series61], ['Calvin', 'CalvinAllRecon', 'SpecCalvin'], "dist20", output_folder)
#plot_load([series7+series71], ['Calvin', 'CalvinAllRecon', 'SpecCalvin'], "dist50", output_folder)
plot_load([series8+series81], ['Calvin', 'CalvinAllRecon', 'SpecCalvin'], "dist100", output_folder)

