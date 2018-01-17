#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend


all_recons="false"
seq="1 2 3"
for recon in $all_recons
do
for s in $seq
do

./benchmark.sh calvin_less_recon t 4 0 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 6 0 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 8 0 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 10 0 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 12 0 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 15 0 0 5 1000 10 1 10 2 200 $recon

#./benchmark.sh calvin_less_recon t 8 1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh calvin_less_recon t 10 1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh calvin_less_recon t 12 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 4 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 8 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 10 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 12 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 14 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 16 1 0 5 1000 10 1 10 2 200 $recon

#./benchmark.sh calvin_less_recon t 10 10 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 3 10 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 6 10 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 9 10 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 12 10 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 15 10 0 5 1000 10 1 10 2 200 $recon

./benchmark.sh calvin_less_recon t 8 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 10 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 12 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 14 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh calvin_less_recon t 16 50 0 5 1000 10 1 10 2 200 $recon

#./benchmark.sh calvin_less_recon t 10 100 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh calvin_less_recon t 15 100 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh calvin_less_recon t 17 100 0 5 1000 10 1 10 2 200 $recon
done

done
exit

seq="1 2"
opt="false"
for s in $seq
do
#./benchmark.sh aggr_spec_calvin t 9 100 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 10 100 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 11 100 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 12 100 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 13 100 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 14 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 10 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 11 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 12 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 14 100 0 5 1000 20 1 10 2 200 $opt

#./benchmark.sh aggr_spec_calvin t 40 0 0 5 1000 20 1 10 2 200 $opt 
#./benchmark.sh aggr_spec_calvin t 60 0 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 80 0 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 100 0 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 120 0 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 140 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 5 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 6 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 10 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 15 0 0 5 1000 20 1 10 2 200 $opt

#./benchmark.sh aggr_spec_calvin t 10 50 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 12 50 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 14 50 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 16 50 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 18 50 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 20 50 0 5 1000 20 1 10 2 200 $opt

#./benchmark.sh aggr_spec_calvin t 18 20 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 20 20 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 22 20 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 24 20 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 26 20 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 28 20 0 5 1000 20 1 10 2 200 $opt

#./benchmark.sh aggr_spec_calvin t 18 10 0 5 1000 20 1 10 2 200 $opt 
#./benchmark.sh aggr_spec_calvin t 20 10 0 5 1000 20 1 10 2 200 $opt 
#./benchmark.sh aggr_spec_calvin t 24 10 0 5 1000 20 1 10 2 200 $opt 
#./benchmark.sh aggr_spec_calvin t 26 10 0 5 1000 20 1 10 2 200 $opt 
#./benchmark.sh aggr_spec_calvin t 28 10 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 30 10 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 10 10 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 11 10 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 12 10 0 5 1000 20 1 10 2 200 $opt

#./benchmark.sh aggr_spec_calvin t 20 1 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 30 1 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 40 1 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 50 1 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 60 1 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 70 1 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 8 1 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 9 1 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 10 1 0 5 1000 20 1 10 2 200 $opt

#./benchmark.sh aggr_spec_calvin t 40 0.1 0 5 1000 20 1 10 2 200 $opt 
#./benchmark.sh aggr_spec_calvin t 50 0.1 0 5 1000 20 1 10 2 200 $opt 
#./benchmark.sh aggr_spec_calvin t 60 0.1 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 70 0.1 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 80 0.1 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 90 0.1 0 5 1000 20 1 10 2 200 $opt

#./benchmark.sh aggr_spec_calvin t 40 0.01 0 5 1000 20 1 10 2 200 $opt 
#./benchmark.sh aggr_spec_calvin t 60 0.01 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 80 0.01 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 90 0.01 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 100 0.01 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 110 0.01 0 5 1000 20 1 10 2 200 $opt

done
