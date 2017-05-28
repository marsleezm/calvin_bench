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
from plot_num import *

series1=[21706.9,22185.3,21381.8,21324.8, 21312, 21392.2]
series2=[12427.5, 22030, 36205.2, 66584.8, 93936.4,105989]
x_axis=[1,2,4,8,12,16]
time = strftime("%Y-%m-%d-%H%M%S", gmtime())
output_folder = os.path.join('./results/figures/core_scale/', time)
os.mkdir(output_folder)
plot_num([series1, series2], ['Calvin', 'PASTA'], x_axis, 'nothing', output_folder)
