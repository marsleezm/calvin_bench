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
from helper import *
from plot_lines import *


system_type=1
bench_type=2
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
input_folder1="./results/micro/Apr20/Apr20-all/"
#input_folder2="./results/micro/Apr20/Apr20-all/"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder1)
calculate_avg_throughput(config_prop_dict1)

#full_config_dict2, config_prop_dict2, config_set2 = build_config_dict(input_folder2)
#calculate_avg_throughput(config_prop_dict2)

x_axis, series1 = get_throughput_series([('system_type', 'calvin'), ('bench_type', 't'), ('max_batch_size', 300)], 'duration', 'distribute_percent', full_config_dict1, config_prop_dict1)
x_axis, series2 = get_throughput_series([('system_type', 'spec_calvin'), ('bench_type', 't'), ('max_batch_size', 300)], 'duration', 'distribute_percent', full_config_dict1, config_prop_dict1)
#x_axis2, series2 = get_throughput_series([('system_type', 'spec_calvin'), ('max_pend', '=max_sc')], 'distribute_percent', 'max_sc', full_config_dict, config_prop_dict)
print series1
print series2
exit()

output_folder='./results/figures/'
plot_lines([series2, series1], ['SpecCalvin', 'Calvin'], x_axis, "SpecCalvin vs Calvin TPCC", output_folder)

