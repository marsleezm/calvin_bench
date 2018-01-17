#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend

if [ 1 == 2 ]
then
seq="1 2"
dist="0"

for s in $seq
do
for d in $dist
do
./benchmark.sh aggr_spec_calvin t 40 0 0 5 1000 10 1 10 2 200
./benchmark.sh aggr_spec_calvin t 50 0 0 5 1000 10 1 10 2 200
./benchmark.sh aggr_spec_calvin t 60 0 0 5 1000 10 1 10 2 200
./benchmark.sh aggr_spec_calvin t 70 0 0 5 1000 10 1 10 2 200
./benchmark.sh aggr_spec_calvin t 80 0 0 5 1000 10 1 10 2 200
./benchmark.sh aggr_spec_calvin t 85 0 0 5 1000 10 1 10 2 200
./benchmark.sh aggr_spec_calvin t 90 0 0 5 1000 10 1 10 2 200
./benchmark.sh aggr_spec_calvin t 95 0 0 5 1000 10 1 10 2 200
done
done

for s in $seq
do
for d in $dist
do
./benchmark.sh calvin_less_recon t 10 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_less_recon t 20 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_less_recon t 30 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_less_recon t 40 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_less_recon t 60 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_less_recon t 80 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_less_recon t 100 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_less_recon t 160 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_less_recon t 200 0 0 5 1000 10 1 10 2 200
./benchmark.sh calvin_less_recon t 160 0 0 5 1000 10 1 10 2 200
done
done
fi


seq="1"
cs="1000"
deps="0"
dists="0"
for s in $seq
do
    for c in $cs
    do
        for dep in $deps
        do
            for dist in $dists
            do
                ./benchmark.sh aggr_spec_calvin m 100 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh aggr_spec_calvin m 200 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh aggr_spec_calvin m 300 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh aggr_spec_calvin m 400 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh aggr_spec_calvin m 500 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh aggr_spec_calvin m 600 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh aggr_spec_calvin m 700 $dist $dep 5 $c 10 1 10 2 200
            done
        done
    done
done


seq="1"
cs="1000"
deps="0"
dists="0"
for s in $seq
do
    for c in $cs
    do
        for dep in $deps
        do
            for dist in $dists
            do
                ./benchmark.sh calvin_general_recon m 50 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh calvin_general_recon m 100 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh calvin_general_recon m 150 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh calvin_general_recon m 200 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh calvin_general_recon m 250 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh calvin_general_recon m 300 $dist $dep 5 $c 10 1 10 2 200
                ./benchmark.sh calvin_general_recon m 350 $dist $dep 5 $c 10 1 10 2 200
            done
        done
    done
done
