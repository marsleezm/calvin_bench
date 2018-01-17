#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
seq="1"
for s in $seq
do
#./benchmark.sh calvin_less_recon t 40 0 0 5 1000 10 1 10 2 200
#./benchmark.sh calvin_less_recon t 80 0 0 5 1000 10 1 10 2 200
#./benchmark.sh calvin_less_recon t 100 0 0 5 1000 10 1 10 2 200
#./benchmark.sh calvin_less_recon t 120 0 0 5 1000 10 1 10 2 200
#./benchmark.sh calvin_less_recon t 140 0 0 5 1000 10 1 10 2 200
#./benchmark.sh calvin_less_recon t 160 0 0 5 1000 10 1 10 2 200

./benchmark.sh calvin_less_recon t 120 20 0 5 1000 10 1 10 2 200

done
