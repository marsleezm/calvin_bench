#!/bin/bash

# Folder, bench type, max_batch_size, distribute_percent, dependent_percent,
# index_num, index_size
./benchmark.sh spec_calvin m 500 0 0 2 1000
./benchmark.sh spec_calvin m 600 0 0 2 1000
./benchmark.sh spec_calvin m 700 0 0 2 1000

./benchmark.sh calvin m 200 0 0 2 1000
./benchmark.sh calvin m 150 0 0 2 1000
exit
./benchmark.sh spec_calvin m
./benchmark.sh calvin m
