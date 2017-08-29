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
from plot_comp_load import *


#num_nodes=[4, 8, 16, 32]
num_nodes=[32]
#dist_percents=[10,50,90]
#dist_percents=[0, 1, 10, 50]
dist_percents=[0, 0.1]
time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/', time)
os.mkdir(output_folder)
for num_node in num_nodes:
    input_folder="./results/scale/"+str(num_node)
    full_config_dict1, config_prop_dict1, config_set1 = build_config_dict(input_folder)
    calculate_avg_throughput(config_prop_dict1)

    involved_nodes=[2, num_node]
    total_series=[]
    for dist_percent in dist_percents:
        for inv_node in involved_nodes:
            series = get_data_series([('distribute_percent', dist_percent), ('multi_txn_num_parts', inv_node), ('benchtype', 'm')], 'systype', 'max_batch_size', ['batch_duration'], full_config_dict1, config_prop_dict1)

            for i, (name, value, point_prop, other_prop) in enumerate(series):
                new_point_prop = []
                for j, v in enumerate(point_prop):
                    new_point_prop.append(v*num_node/other_prop[0][j])
                if name == 'ssmr-paxos':
                    series[i] = (('Calvin', dist_percent, inv_node), value, new_point_prop) 
                else:
                    series[i] = (('Genepi', dist_percent, inv_node), value, new_point_prop) 
            total_series.extend(series)

        #plot_load(total_series, str(num_node)+"nodes"+str(dist_percent), output_folder)
        #total_series = []

    #print total_series
    plot_load(total_series, str(num_node)+"nodes", output_folder)
