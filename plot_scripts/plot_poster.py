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

input_folder="./results/for_poster/new_m"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
calculate_avg_throughput(config_prop_dict1)

x_axis, series1 = get_data_series([('distribute_percent', 0), ('benchtype', 'm')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)

time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/poster/', time)
os.mkdir(output_folder)

series1.reverse()
plot_load([series1], ['Calvin', 'SP-Store'], x_axis, "micro-dist0", output_folder)


input_folder="./results/for_poster/t"
full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
calculate_avg_throughput(config_prop_dict1)

x_axis, series1 = get_data_series([('distribute_percent', 0), ('benchtype', 't')], 'systype', 'max_batch_size', full_config_dict1, config_prop_dict1)


series1.reverse()
plot_load([series1], ['Calvin', 'SP-Store'], x_axis, "tpcc-dist0", output_folder)
