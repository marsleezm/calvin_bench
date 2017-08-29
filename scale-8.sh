#./bin/bash

#.Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
#. done
./benchmark_dc.sh ssmr-skeen 55 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 55 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 65 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 70 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 70 1 2 false 0.01

./benchmark_dc.sh ssmr-skeen 45 1 8 false 0.01
./benchmark_dc.sh ssmr-skeen 45 1 8 false 0.01
./benchmark_dc.sh ssmr-skeen 50 1 8 false 0.01
./benchmark_dc.sh ssmr-skeen 50 1 8 false 0.01
exit

times="1 2 3"
for i in $times 
do
./benchmark_dc.sh ssmr-skeen 30 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 36 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 42 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 48 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 55 1 2 false 0.01

./benchmark_dc.sh ssmr-skeen 25 1 8 false 0.01
./benchmark_dc.sh ssmr-skeen 30 1 8 false 0.01
./benchmark_dc.sh ssmr-skeen 35 1 8 false 0.01
./benchmark_dc.sh ssmr-skeen 40 1 8 false 0.01
./benchmark_dc.sh ssmr-skeen 45 1 8 false 0.01

./benchmark_dc.sh ssmr-paxos 30 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 36 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 42 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 48 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 55 1 2 false 0.01

./benchmark_dc.sh ssmr-paxos 10 1 8 false 0.01
./benchmark_dc.sh ssmr-paxos 15 1 8 false 0.01
./benchmark_dc.sh ssmr-paxos 20 1 8 false 0.01
./benchmark_dc.sh ssmr-paxos 25 1 8 false 0.01
./benchmark_dc.sh ssmr-paxos 30 1 8 false 0.01

./benchmark_dc.sh ssmr-skeen 15 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 20 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 25 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 30 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 35 10 2 false 0.01

./benchmark_dc.sh ssmr-skeen 6 10 8 false 0.01
./benchmark_dc.sh ssmr-skeen 8 10 8 false 0.01
./benchmark_dc.sh ssmr-skeen 10 10 8 false 0.01
./benchmark_dc.sh ssmr-skeen 11 10 8 false 0.01
./benchmark_dc.sh ssmr-skeen 12 10 8 false 0.01

./benchmark_dc.sh ssmr-paxos 14 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 16 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 18 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 20 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 22 10 2 false 0.01

./benchmark_dc.sh ssmr-paxos 5 10 8 false 0.01
./benchmark_dc.sh ssmr-paxos 6 10 8 false 0.01
./benchmark_dc.sh ssmr-paxos 7 10 8 false 0.01
./benchmark_dc.sh ssmr-paxos 8 10 8 false 0.01
./benchmark_dc.sh ssmr-paxos 9 10 8 false 0.01

./benchmark_dc.sh ssmr-skeen 5 50 2 false 0.01
./benchmark_dc.sh ssmr-skeen 6 50 2 false 0.01
./benchmark_dc.sh ssmr-skeen 7 50 2 false 0.01
./benchmark_dc.sh ssmr-skeen 8 50 2 false 0.01
./benchmark_dc.sh ssmr-skeen 9 50 2 false 0.01

./benchmark_dc.sh ssmr-skeen 1 50 8 false 0.016
./benchmark_dc.sh ssmr-skeen 2 50 8 false 0.016
./benchmark_dc.sh ssmr-skeen 3 50 8 false 0.016
./benchmark_dc.sh ssmr-skeen 4 50 8 false 0.016
./benchmark_dc.sh ssmr-skeen 5 50 8 false 0.016

./benchmark_dc.sh ssmr-paxos 4 50 2 false 0.01
./benchmark_dc.sh ssmr-paxos 5 50 2 false 0.01
./benchmark_dc.sh ssmr-paxos 6 50 2 false 0.01
./benchmark_dc.sh ssmr-paxos 7 50 2 false 0.01
./benchmark_dc.sh ssmr-paxos 8 50 2 false 0.01
./benchmark_dc.sh ssmr-paxos 1 50 8 false 0.016
./benchmark_dc.sh ssmr-paxos 2 50 8 false 0.016
./benchmark_dc.sh ssmr-paxos 3 50 8 false 0.016
./benchmark_dc.sh ssmr-paxos 4 50 8 false 0.016
./benchmark_dc.sh ssmr-paxos 5 50 8 false 0.016
done
