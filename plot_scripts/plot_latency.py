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

#input_folder="/home/li/Repository/calvin_bench/results/tpcc/Apr17/t"
#input_folder="/home/li/Repository/calvin_bench/results/micro/resultApr18/"
#input_folder="/home/li/Repository/calvin_bench/results/micro/Apr19/"
#input_folder1="./results/micro/Apr20/Apr20-alot/"
input_folder="/Users/liz/Documents/MyDocument/repositories/calvin_bench/results/May14"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
calculate_avg_throughput(config_prop_dict1)

#full_config_dict2, config_prop_dict2, config_set2 = build_config_dict(input_folder)
#calculate_avg_throughput(config_prop_dict2)

x_axis, series1 = get_data_series([('distribute_percent', 0), ('benchtype', 'm')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
x_axis, series2 = get_data_series([('distribute_percent', 0.01), ('benchtype', 'm')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
x_axis, series3 = get_data_series([('distribute_percent', 0.1), ('benchtype', 'm')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
x_axis, series4 = get_data_series([('distribute_percent', 1), ('benchtype', 'm')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)
x_axis, series5 = get_data_series([('distribute_percent', 10), ('benchtype', 'm')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)

#x_axis2, series2 = get_data_series([('system_type', 'spec_calvin'), ('max_pend', '=max_sc')], 'distribute_percent', 'max_sc', full_config_dict, config_prop_dict)
print series1
print series2
print series3
print series4
print series5

time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/', time)
os.mkdir(output_folder)

plot_load([series1], ['Calvin', 'SpecCalvin', 'SpecCalvinSkeen'], x_axis, "distribute0", output_folder)
plot_load([series2], ['Calvin', 'SpecCalvin', 'SpecCalvinSkeen'], x_axis, "distribute0.01", output_folder)
plot_load([series3], ['Calvin', 'SpecCalvin', 'SpecCalvinSkeen'], x_axis, "dist0.1", output_folder)
plot_load([series4], ['Calvin', 'SpecCalvin', 'SpecCalvinSkeen'], x_axis, "dist1", output_folder)
plot_load([series5], ['Calvin', 'SpecCalvin', 'SpecCalvinSkeen'], x_axis, "dist10", output_folder)

