#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
recon="false"
./benchmark.sh ssmr t 7 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 6 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 5 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 4 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 3 50 0 5 1000 10 1 10 2 200 $recon

./benchmark.sh ssmr t 7 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 6 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 5 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 4 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 3 50 0 5 1000 10 1 10 2 200 $recon

./benchmark.sh ssmr t 7 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 6 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 5 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 4 50 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 3 50 0 5 1000 10 1 10 2 200 $recon
exit

if [ 1 == 2 ]
then

seq="1 2"
for s in $seq
do
./benchmark.sh spec_calvin t 4 100 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 6 100 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 8 100 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 10 100 0 5 1000 10 1 10 2 200 true

./benchmark.sh spec_calvin t 10 50 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 12 50 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 14 50 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 16 50 0 5 1000 10 1 10 2 200 true

./benchmark.sh spec_calvin t 10 20 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 15 20 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 20 20 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 25 20 0 5 1000 10 1 10 2 200 true

./benchmark.sh spec_calvin t 20 10 0 5 1000 10 1 10 2 200 true 
./benchmark.sh spec_calvin t 25 10 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 30 10 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 35 10 0 5 1000 10 1 10 2 200 true

./benchmark.sh spec_calvin t 30 1 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 40 1 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 50 1 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 60 1 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 70 1 0 5 1000 10 1 10 2 200 true

./benchmark.sh spec_calvin t 30 0.1 0 5 1000 10 1 10 2 200 true 
./benchmark.sh spec_calvin t 40 0.1 0 5 1000 10 1 10 2 200 true 
./benchmark.sh spec_calvin t 50 0.1 0 5 1000 10 1 10 2 200 true 
./benchmark.sh spec_calvin t 60 0.1 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 70 0.1 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 80 0.1 0 5 1000 10 1 10 2 200 true

./benchmark.sh spec_calvin t 40 0.01 0 5 1000 10 1 10 2 200 true 
./benchmark.sh spec_calvin t 50 0.01 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 60 0.01 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 70 0.01 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 80 0.01 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 90 0.01 0 5 1000 10 1 10 2 200 true

./benchmark.sh spec_calvin t 40 0 0 5 1000 10 1 10 2 200 true 
./benchmark.sh spec_calvin t 60 0 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 80 0 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 100 0 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 120 0 0 5 1000 10 1 10 2 200 true
./benchmark.sh spec_calvin t 140 0 0 5 1000 10 1 10 2 200 true
done
fi


all_recons="false"
seq="1"
for recon in $all_recons
do
for s in $seq
do

./benchmark.sh ssmr t 20 0 0 5 1000 10 1 10 2 200 $recon 
./benchmark.sh ssmr t 30 0 0 5 1000 10 1 10 2 200 $recon 
./benchmark.sh ssmr t 40 0 0 5 1000 10 1 10 2 200 $recon 
./benchmark.sh ssmr t 50 0 0 5 1000 10 1 10 2 200 $recon 
./benchmark.sh ssmr t 60 0 0 5 1000 10 1 10 2 200 $recon 

./benchmark.sh ssmr t 10 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 15 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 20 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 30 1 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 40 1 0 5 1000 10 1 10 2 200 $recon

./benchmark.sh ssmr t 4 10 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 8 10 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 12 10 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 16 10 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 20 10 0 5 1000 10 1 10 2 200 $recon

./benchmark.sh ssmr t 1 100 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 2 100 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 3 100 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 4 100 0 5 1000 10 1 10 2 200 $recon
./benchmark.sh ssmr t 5 100 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 50 10 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 70 10 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 90 10 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 110 10 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 130 10 0 5 1000 10 1 10 2 200 $recon

#./benchmark.sh ssmr t 80 1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 100 1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 120 1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 140 1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 160 1 0 5 1000 10 1 10 2 200 $recon


#./benchmark.sh ssmr t 40 0.01 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 80 0.01 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 100 0.01 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 120 0.01 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 140 0.01 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 160 0.01 0 5 1000 10 1 10 2 200 $recon

#./benchmark.sh ssmr t 40 0.1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 80 0.1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 100 0.1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 120 0.1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 140 0.1 0 5 1000 10 1 10 2 200 $recon
#./benchmark.sh ssmr t 160 0.1 0 5 1000 10 1 10 2 200 $recon
done

done
exit

seq="1"
opt="false"
for s in $seq
do
#./benchmark.sh aggr_spec_calvin t 9 100 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 10 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 11 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 12 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 13 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 14 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 15 100 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 16 100 0 5 1000 20 1 10 2 200 $opt

#./benchmark.sh aggr_spec_calvin t 40 0 0 5 1000 20 1 10 2 200 $opt 
#./benchmark.sh aggr_spec_calvin t 60 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 80 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 100 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 120 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 140 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 150 0 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 160 0 0 5 1000 20 1 10 2 200 $opt

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
./benchmark.sh aggr_spec_calvin t 20 10 0 5 1000 20 1 10 2 200 $opt 
./benchmark.sh aggr_spec_calvin t 24 10 0 5 1000 20 1 10 2 200 $opt 
./benchmark.sh aggr_spec_calvin t 26 10 0 5 1000 20 1 10 2 200 $opt 
./benchmark.sh aggr_spec_calvin t 28 10 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 30 10 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 32 10 0 5 1000 20 1 10 2 200 $opt

#./benchmark.sh aggr_spec_calvin t 20 1 0 5 1000 20 1 10 2 200 $opt
#./benchmark.sh aggr_spec_calvin t 30 1 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 40 1 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 50 1 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 60 1 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 70 1 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 80 1 0 5 1000 20 1 10 2 200 $opt
./benchmark.sh aggr_spec_calvin t 90 1 0 5 1000 20 1 10 2 200 $opt

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
