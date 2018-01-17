#./bin/bash

#.Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
#. done
./base_scripts/parallel_command.sh "`cat ./nodes`" "sudo-g5k /etc/init.d/ntp stop && sudo-g5k ntpdate ntp.ubuntu.com"

period="0.002 0.003"
for p in $period
do 
./generate_file.sh 1 > dist-deploy.conf
cp ./dist-deploy.conf ../ssmr-paxos
cp ./dist-deploy.conf ../ssmr-skeen
./benchmark_dc.sh ssmr-skeen 30 1 2 false $p
./benchmark_dc.sh ssmr-skeen 40 1 2 false $p
./benchmark_dc.sh ssmr-skeen 50 1 2 false $p
./benchmark_dc.sh ssmr-skeen 60 1 2 false $p
./benchmark_dc.sh ssmr-skeen 16 10 2 false $p
./benchmark_dc.sh ssmr-skeen 18 10 2 false $p
./benchmark_dc.sh ssmr-skeen 20 10 2 false $p
./benchmark_dc.sh ssmr-skeen 3 50 2 false $p
./benchmark_dc.sh ssmr-skeen 4 50 2 false $p
./benchmark_dc.sh ssmr-skeen 5 50 2 false $p

./benchmark_dc.sh ssmr-paxos 30 1 2 false $p
./benchmark_dc.sh ssmr-paxos 40 1 2 false $p
./benchmark_dc.sh ssmr-paxos 50 1 2 false $p
./benchmark_dc.sh ssmr-paxos 60 1 2 false $p
./benchmark_dc.sh ssmr-paxos 16 10 2 false $p
./benchmark_dc.sh ssmr-paxos 18 10 2 false $p
./benchmark_dc.sh ssmr-paxos 20 10 2 false $p
./benchmark_dc.sh ssmr-paxos 3 50 2 false $p
./benchmark_dc.sh ssmr-paxos 4 50 2 false $p
./benchmark_dc.sh ssmr-paxos 5 50 2 false $p

./generate_file.sh 2 > dist-deploy.conf
cp ./dist-deploy.conf ../ssmr-paxos
cp ./dist-deploy.conf ../ssmr-skeen
./benchmark_dc.sh ssmr-skeen 30 1 2 false $p
./benchmark_dc.sh ssmr-skeen 40 1 2 false $p
./benchmark_dc.sh ssmr-skeen 50 1 2 false $p
./benchmark_dc.sh ssmr-skeen 60 1 2 false $p
./benchmark_dc.sh ssmr-skeen 16 10 2 false $p
./benchmark_dc.sh ssmr-skeen 18 10 2 false $p
./benchmark_dc.sh ssmr-skeen 20 10 2 false $p
./benchmark_dc.sh ssmr-skeen 3 50 2 false $p
./benchmark_dc.sh ssmr-skeen 4 50 2 false $p
./benchmark_dc.sh ssmr-skeen 5 50 2 false $p

./benchmark_dc.sh ssmr-paxos 30 1 2 false $p
./benchmark_dc.sh ssmr-paxos 40 1 2 false $p
./benchmark_dc.sh ssmr-paxos 50 1 2 false $p
./benchmark_dc.sh ssmr-paxos 60 1 2 false $p
./benchmark_dc.sh ssmr-paxos 16 10 2 false $p
./benchmark_dc.sh ssmr-paxos 18 10 2 false $p
./benchmark_dc.sh ssmr-paxos 20 10 2 false $p
./benchmark_dc.sh ssmr-paxos 3 50 2 false $p
./benchmark_dc.sh ssmr-paxos 4 50 2 false $p
./benchmark_dc.sh ssmr-paxos 5 50 2 false $p

./generate_file.sh 4 > dist-deploy.conf
cp ./dist-deploy.conf ../ssmr-paxos
cp ./dist-deploy.conf ../ssmr-skeen
./benchmark_dc.sh ssmr-skeen 30 1 2 false $p
./benchmark_dc.sh ssmr-skeen 40 1 2 false $p
./benchmark_dc.sh ssmr-skeen 50 1 2 false $p
./benchmark_dc.sh ssmr-skeen 60 1 2 false $p
./benchmark_dc.sh ssmr-skeen 16 10 2 false $p
./benchmark_dc.sh ssmr-skeen 18 10 2 false $p
./benchmark_dc.sh ssmr-skeen 20 10 2 false $p
./benchmark_dc.sh ssmr-skeen 3 50 2 false $p
./benchmark_dc.sh ssmr-skeen 4 50 2 false $p
./benchmark_dc.sh ssmr-skeen 5 50 2 false $p

./benchmark_dc.sh ssmr-paxos 30 1 2 false $p
./benchmark_dc.sh ssmr-paxos 40 1 2 false $p
./benchmark_dc.sh ssmr-paxos 50 1 2 false $p
./benchmark_dc.sh ssmr-paxos 60 1 2 false $p
./benchmark_dc.sh ssmr-paxos 16 10 2 false $p
./benchmark_dc.sh ssmr-paxos 18 10 2 false $p
./benchmark_dc.sh ssmr-paxos 20 10 2 false $p
./benchmark_dc.sh ssmr-paxos 3 50 2 false $p
./benchmark_dc.sh ssmr-paxos 4 50 2 false $p
./benchmark_dc.sh ssmr-paxos 5 50 2 false $p
done

#./benchmark_dc.sh ssmr-skeen 7 0 2 false 0.001
#./benchmark_dc.sh ssmr-skeen 8 0 2 false 0.001
#./benchmark_dc.sh ssmr-skeen 9 0 2 false 0.001
#./benchmark_dc.sh ssmr-skeen 4 0.1 2 false 0.001
#./benchmark_dc.sh ssmr-skeen 5 0.1 2 false 0.001
#./benchmark_dc.sh ssmr-skeen 6 0.1 2 false 0.001
#./benchmark_dc.sh ssmr-skeen 1 1 2 false 0.001
#./benchmark_dc.sh ssmr-skeen 2 1 2 false 0.001
#./benchmark_dc.sh ssmr-skeen 3 1 2 false 0.001
#./benchmark_dc.sh ssmr-skeen 1 0 2 false $p
#./benchmark_dc.sh ssmr-skeen 10 0 2 false $p
./benchmark_dc.sh ssmr-skeen 10 1 2 false 0.005
./benchmark_dc.sh ssmr-skeen 20 1 2 false 0.005
./benchmark_dc.sh ssmr-skeen 20 5 2 false 0.005

./benchmark_dc.sh ssmr-paxos 10 1 2 false 0.005
./benchmark_dc.sh ssmr-paxos 20 1 2 false 0.005
./benchmark_dc.sh ssmr-paxos 20 5 2 false 0.005
exit
./benchmark_dc.sh ssmr-paxos 1 0 2 false 0.003
./benchmark_dc.sh ssmr-paxos 1 0 2 false 0.004
#./benchmark_dc.sh ssmr-paxos 1 0 2 false $p
#./benchmark_dc.sh ssmr-paxos 10 0 2 false $p
exit

./benchmark_dc.sh ssmr-paxos 10 0 2 false 0.005
./benchmark_dc.sh ssmr-paxos 20 0 2 false 0.005

./benchmark_dc.sh ssmr-paxos 10 0 2 false $p
./benchmark_dc.sh ssmr-paxos 10 0 2 false 0.003
exit
./benchmark_dc.sh ssmr-paxos 16 0 2 false $p
#./benchmark_dc.sh ssmr-paxos 9 0 2 false 0.001
./benchmark_dc.sh ssmr-paxos 8 0.1 2 false $p
./benchmark_dc.sh ssmr-paxos 10 0.1 2 false $p
#./benchmark_dc.sh ssmr-paxos 6 0.1 2 false 0.001
./benchmark_dc.sh ssmr-paxos 2 1 2 false $p
./benchmark_dc.sh ssmr-paxos 4 1 2 false $p
#./benchmark_dc.sh ssmr-paxos 3 1 2 false 0.001
exit
./benchmark_dc.sh ssmr-skeen 20 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 30 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 40 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 45 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 50 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 55 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 60 1 2 false 0.01

./benchmark_dc.sh ssmr-paxos 20 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 30 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 36 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 40 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 44 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 48 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 52 1 2 false 0.01

./benchmark_dc.sh ssmr-skeen 20 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 30 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 40 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 45 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 50 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 55 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 60 1 2 false 0.01

./benchmark_dc.sh ssmr-paxos 20 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 30 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 36 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 40 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 44 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 48 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 52 1 2 false 0.01
exit
times="1 2"
exit
times="1 2"
for i in $times 
do
./benchmark_dc.sh ssmr-skeen 40 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 45 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 50 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 55 1 2 false 0.01
./benchmark_dc.sh ssmr-skeen 60 1 2 false 0.01

./benchmark_dc.sh ssmr-skeen 12 1 16 false 0.01
./benchmark_dc.sh ssmr-skeen 14 1 16 false 0.01
./benchmark_dc.sh ssmr-skeen 16 1 16 false 0.01
./benchmark_dc.sh ssmr-skeen 18 1 16 false 0.01
./benchmark_dc.sh ssmr-skeen 20 1 16 false 0.01

./benchmark_dc.sh ssmr-paxos 36 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 40 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 44 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 48 1 2 false 0.01
./benchmark_dc.sh ssmr-paxos 52 1 2 false 0.01

./benchmark_dc.sh ssmr-paxos 8 1 16 false 0.01
./benchmark_dc.sh ssmr-paxos 10 1 16 false 0.01
./benchmark_dc.sh ssmr-paxos 12 1 16 false 0.01
./benchmark_dc.sh ssmr-paxos 14 1 16 false 0.01
./benchmark_dc.sh ssmr-paxos 16 1 16 false 0.01

./benchmark_dc.sh ssmr-skeen 13 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 16 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 19 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 22 10 2 false 0.01
./benchmark_dc.sh ssmr-skeen 25 10 2 false 0.01

./benchmark_dc.sh ssmr-skeen 1 10 16 false 0.016
./benchmark_dc.sh ssmr-skeen 2 10 16 false 0.016
./benchmark_dc.sh ssmr-skeen 3 10 16 false 0.016
./benchmark_dc.sh ssmr-skeen 4 10 16 false 0.016
./benchmark_dc.sh ssmr-skeen 5 10 16 false 0.016

./benchmark_dc.sh ssmr-paxos 14 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 15 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 16 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 17 10 2 false 0.01
./benchmark_dc.sh ssmr-paxos 18 10 2 false 0.01

./benchmark_dc.sh ssmr-paxos 1 10 16 false 0.016
./benchmark_dc.sh ssmr-paxos 2 10 16 false 0.016
./benchmark_dc.sh ssmr-paxos 3 10 16 false 0.016
./benchmark_dc.sh ssmr-paxos 4 10 16 false 0.016
./benchmark_dc.sh ssmr-paxos 5 10 16 false 0.016

./benchmark_dc.sh ssmr-skeen 2 50 2 false 0.01
./benchmark_dc.sh ssmr-skeen 3 50 2 false 0.01
./benchmark_dc.sh ssmr-skeen 4 50 2 false 0.01
./benchmark_dc.sh ssmr-skeen 5 50 2 false 0.01
./benchmark_dc.sh ssmr-skeen 6 50 2 false 0.01

./benchmark_dc.sh ssmr-skeen 1 50 16 false 0.09
./benchmark_dc.sh ssmr-skeen 2 50 16 false 0.09
./benchmark_dc.sh ssmr-skeen 3 50 16 false 0.09
./benchmark_dc.sh ssmr-skeen 4 50 16 false 0.09
./benchmark_dc.sh ssmr-skeen 5 50 16 false 0.09

./benchmark_dc.sh ssmr-paxos 2 50 2 false 0.01
./benchmark_dc.sh ssmr-paxos 3 50 2 false 0.01
./benchmark_dc.sh ssmr-paxos 4 50 2 false 0.01
./benchmark_dc.sh ssmr-paxos 5 50 2 false 0.01
./benchmark_dc.sh ssmr-paxos 6 50 2 false 0.01

./benchmark_dc.sh ssmr-paxos 1 50 16 false 0.09
./benchmark_dc.sh ssmr-paxos 2 50 16 false 0.09
./benchmark_dc.sh ssmr-paxos 3 50 16 false 0.09
./benchmark_dc.sh ssmr-paxos 4 50 16 false 0.09
./benchmark_dc.sh ssmr-paxos 5 50 16 false 0.09
done
