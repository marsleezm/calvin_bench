#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
./benchmark_dc.sh ssmr-skeen 10 0 2 
./benchmark_dc.sh ssmr-skeen 10 0 2 
./benchmark_dc.sh ssmr-skeen 10 0 2 
./benchmark_dc.sh ssmr-paxos 10 0 2 
./benchmark_dc.sh ssmr-paxos 10 0 2 
./benchmark_dc.sh ssmr-paxos 10 0 2 
./benchmark_dc.sh ssmr-pedone 10 0 2 
./benchmark_dc.sh ssmr-pedone 10 0 2 
./benchmark_dc.sh ssmr-pedone 10 0 2 

./benchmark_dc.sh ssmr-skeen 10 0.1 2 
./benchmark_dc.sh ssmr-skeen 10 0.1 2 
./benchmark_dc.sh ssmr-skeen 10 0.1 2 
./benchmark_dc.sh ssmr-paxos 10 0.1 2 
./benchmark_dc.sh ssmr-paxos 10 0.1 2 
./benchmark_dc.sh ssmr-paxos 10 0.1 2 
./benchmark_dc.sh ssmr-pedone 10 0.1 2 
./benchmark_dc.sh ssmr-pedone 10 0.1 2 
./benchmark_dc.sh ssmr-pedone 10 0.1 2 
