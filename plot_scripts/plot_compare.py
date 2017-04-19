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
input_folder="/home/li/Repository/calvin_bench/results/micro/Apr19/"
full_config_dict, config_prop_dict, config_set = build_config_dict(input_folder)
avg_throughput_dict = calculate_avg_throughput(config_prop_dict)

x_axis, series1 = get_throughput_series([('system_type', 'spec_calvin')], 'distribute_percent', 'max_pend', full_config_dict, config_prop_dict)

output_folder='./results/figures/'
plot_lines(series1, [], x_axis, "Dependent 10", output_folder)

