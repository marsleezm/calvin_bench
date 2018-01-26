#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
seq="1 2 3"
for i in $seq
do
./benchmark.sh spec_calvin m 450 1 0 5 50000 200 2 200 10 0
./benchmark.sh spec_calvin m 450 1 0 5 50000 200 2 200 10 10
./benchmark.sh spec_calvin m 360 1 0 5 50000 200 2 200 10 30
./benchmark.sh spec_calvin m 260 1 0 5 50000 200 2 200 10 60
./benchmark.sh spec_calvin m 200 1 0 5 50000 200 2 200 10 100

./benchmark.sh spec_calvin m 360 10 0 5 50000 300 2 200 10 0
./benchmark.sh spec_calvin m 320 10 0 5 50000 300 2 200 10 10
./benchmark.sh spec_calvin m 250 10 0 5 50000 300 2 200 10 30
./benchmark.sh spec_calvin m 170 10 0 5 50000 300 2 200 10 60
./benchmark.sh spec_calvin m 120 10 0 5 50000 300 2 200 10 100

./benchmark.sh spec_calvin m 190 50 0 5 50000 200 2 200 10 0
./benchmark.sh spec_calvin m 150 50 0 5 50000 200 2 200 10 10
./benchmark.sh spec_calvin m 110 50 0 5 50000 200 2 200 10 30
./benchmark.sh spec_calvin m 80 50 0 5 50000 200 2 200 10 60
./benchmark.sh spec_calvin m 70 50 0 5 50000 200 2 200 10 100

#./benchmark.sh spec_calvin m 300 1 0 5 50000 200 4 200 10
#./benchmark.sh spec_calvin m 250 10 0 5 50000 300 4 200 10
#./benchmark.sh spec_calvin m 200 30 0 5 50000 200 4 200 10
#./benchmark.sh spec_calvin m 150 60 0 5 50000 150 4 200 10
#./benchmark.sh spec_calvin m 80 100 0 5 50000 100 4 200 10

done

