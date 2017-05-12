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
from plot_lines import *


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
input_folder="/home/li/Repository/calvin_bench/results/May08/micro/"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
calculate_avg_throughput(config_prop_dict1)

#full_config_dict2, config_prop_dict2, config_set2 = build_config_dict(input_folder)
#calculate_avg_throughput(config_prop_dict2)

x_axis, series1 = get_throughput_series([('systype', 'calvin'), ('benchtype', 'm')], 'dependent_percent', 'distribute_percent', full_config_dict1, config_prop_dict1)
x_axis, series2 = get_throughput_series([('systype', 'spec_calvin'), ('benchtype', 'm')], 'dependent_percent', 'distribute_percent', full_config_dict1, config_prop_dict1)
x_axis, series3 = get_throughput_series([('systype', 'aggr_spec_calvin'), ('benchtype', 'm')], 'dependent_percent', 'distribute_percent', full_config_dict1, config_prop_dict1)

#x_axis2, series2 = get_throughput_series([('system_type', 'spec_calvin'), ('max_pend', '=max_sc')], 'distribute_percent', 'max_sc', full_config_dict, config_prop_dict)
print series1
print series2

time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/micro/', time)
os.mkdir(output_folder)

plot_lines([series3, series2, series1], ['AggrSpecCalvin', 'SpecCalvin', 'Calvin'], x_axis, "SpecCalvin vs Calvin Micro", output_folder)

