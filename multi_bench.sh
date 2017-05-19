#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
seq="1 2 3"
for s in $seq
do
./benchmark.sh calvin_general_recon t 40 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 80 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 100 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 120 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 140 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 160 0 0 5 1000 10 1 10 2 200

./benchmark.sh calvin_general_recon t 40 0.01 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 80 0.01 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 100 0.01 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 120 0.01 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 140 0.01 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 160 0.01 0 5 1000 10 1 10 2 200

./benchmark.sh calvin_general_recon t 40 0.1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 80 0.1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 100 0.1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 120 0.1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 140 0.1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 160 0.1 0 5 1000 10 1 10 2 200

./benchmark.sh calvin_general_recon t 40 1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 80 1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 100 1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 120 1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 140 1 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 160 1 0 5 1000 10 1 10 2 200

./benchmark.sh calvin_general_recon t 40 10 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 80 10 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 100 10 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 120 10 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 140 10 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 160 10 0 5 1000 10 1 10 2 200

./benchmark.sh calvin_general_recon t 40 20 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 80 20 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 100 20 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 120 20 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 140 20 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 160 20 0 5 1000 10 1 10 2 200

./benchmark.sh calvin_general_recon t 40 50 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 80 50 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 100 50 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 120 50 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 140 50 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 160 50 0 5 1000 10 1 10 2 200

./benchmark.sh calvin_general_recon t 40 100 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 80 100 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 100 100 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 120 100 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 140 100 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_general_recon t 160 100 0 5 1000 10 1 10 2 200

done
