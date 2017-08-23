#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
#./benchmark_dc.sh ssmr-paxos 10 0 2 false 
#./benchmark_dc.sh ssmr-pedone 10 0 2 false
#./benchmark_dc.sh ssmr-skeen 10 0 2 false

#./benchmark_dc.sh ssmr-paxos 10 1 2 false 
#./benchmark_dc.sh ssmr-pedone 10 1 2 false
#./benchmark_dc.sh ssmr-skeen 10 1 2 false

#./benchmark_dc.sh ssmr-paxos 10 10 2 false 
#./benchmark_dc.sh ssmr-pedone 10 10 2 false
#./benchmark_dc.sh ssmr-skeen 10 10 2 false

./benchmark_dc.sh ssmr-paxos 1 10 2 false 0.01
exit
./benchmark_dc.sh ssmr-paxos 2 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 5 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 10 10 2 false 0.01

./benchmark_dc.sh ssmr-skeen 1 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 2 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 5 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 10 10 2 false 0.01
exit
