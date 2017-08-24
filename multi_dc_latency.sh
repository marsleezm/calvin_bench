#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
./benchmark_dc.sh ssmr-skeen 400 0 2 false 0.01
./benchmark_dc.sh ssmr-skeen 400 0 2 false 0.01
./benchmark_dc.sh ssmr-skeen 400 0 2 false 0.01
exit
if [ 1 == 2 ]
then
./benchmark_dc.sh ssmr-skeen 1 50 2 false 1 
./benchmark_dc.sh ssmr-paxos 1 50 2 false 1
./benchmark_dc.sh ssmr-skeen 2 50 2 false 1 
./benchmark_dc.sh ssmr-skeen 2 50 2 false 1 
./benchmark_dc.sh ssmr-skeen 3 50 2 false 1 
./benchmark_dc.sh ssmr-paxos 3 50 2 false 1
./benchmark_dc.sh ssmr-paxos 4 50 2 false 1
./benchmark_dc.sh ssmr-paxos 4 50 2 false 1
./benchmark_dc.sh ssmr-paxos 5 50 2 false 1
./benchmark_dc.sh ssmr-paxos 5 50 2 false 1
fi


#./benchmark_dc.sh ssmr-skeen 60 0 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 120 0 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 180 0 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 240 0 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 300 0 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 400 0 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 400 0 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 400 0 2 false 0.01

#./benchmark_dc.sh ssmr-skeen 4 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 8 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 12 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 16 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 14 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 14 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-skeen 14 0.1 2 false 0.01

#./benchmark_dc.sh ssmr-skeen 1 1 2 false 0.025
#./benchmark_dc.sh ssmr-skeen 2 1 2 false 0.025
#./benchmark_dc.sh ssmr-skeen 3 1 2 false 0.025
#./benchmark_dc.sh ssmr-skeen 4 1 2 false 0.025
#./benchmark_dc.sh ssmr-skeen 5 1 2 false 0.025
#./benchmark_dc.sh ssmr-skeen 3 1 2 false 0.025
#./benchmark_dc.sh ssmr-skeen 4 1 2 false 0.025
#./benchmark_dc.sh ssmr-skeen 5 1 2 false 0.025

#./benchmark_dc.sh ssmr-skeen 1 10 2 false 0.22
#./benchmark_dc.sh ssmr-skeen 2 10 2 false 0.22
#./benchmark_dc.sh ssmr-skeen 3 10 2 false 0.22
#./benchmark_dc.sh ssmr-skeen 4 10 2 false 0.22
./benchmark_dc.sh ssmr-skeen 4 10 2 false 0.2
./benchmark_dc.sh ssmr-skeen 4 10 2 false 0.2
./benchmark_dc.sh ssmr-skeen 4 10 2 false 0.2

#./benchmark_dc.sh ssmr-paxos 60 0 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 120 0 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 180 0 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 240 0 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 300 0 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 350 0 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 350 0 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 350 0 2 false 0.01

#./benchmark_dc.sh ssmr-paxos 4 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 8 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 12 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 16 0.1 2 false 0.01
#./benchmark_dc.sh ssmr-paxos 20 0.1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 14 0.1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 14 0.1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 14 0.1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 16 0.1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 16 0.1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 16 0.1 2 false 0.01

#./benchmark_dc.sh ssmr-paxos 1 1 2 false 0.025
#./benchmark_dc.sh ssmr-paxos 2 1 2 false 0.025
#./benchmark_dc.sh ssmr-paxos 3 1 2 false 0.025
#./benchmark_dc.sh ssmr-paxos 4 1 2 false 0.025
#./benchmark_dc.sh ssmr-paxos 5 1 2 false 0.025
#./benchmark_dc.sh ssmr-paxos 3 1 2 false 0.025
#./benchmark_dc.sh ssmr-paxos 4 1 2 false 0.025
#./benchmark_dc.sh ssmr-paxos 5 1 2 false 0.025

#./benchmark_dc.sh ssmr-paxos 1 10 2 false 0.22
#./benchmark_dc.sh ssmr-paxos 2 10 2 false 0.22
#./benchmark_dc.sh ssmr-paxos 3 10 2 false 0.22
#./benchmark_dc.sh ssmr-paxos 4 10 2 false 0.22
./benchmark_dc.sh ssmr-paxos 4 10 2 false 0.2
./benchmark_dc.sh ssmr-paxos 4 10 2 false 0.2
./benchmark_dc.sh ssmr-paxos 4 10 2 false 0.2
exit
