#!/bin/bash
set -e

set +e
pkill -f "deployment/db"
set -e

BenchFolder=$1
# Folder, bench type, max_batch_size, distribute_percent, dependent_percent,
# index_num, index_size, max_sc, max_pend, max_suspend
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf max_batch_size $2
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf distribute_percent $3
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf multi_txn_num_parts $4
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf paxos $5
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf duration 60 
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf batch_duration $6
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf rw_set_size 10 

## Make folder
Time=`date +'%Y-%m-%d-%H%M%S'`
CurrentFolder=`pwd`
Folder=$CurrentFolder/results/dispatch/$Time
mkdir $Folder

echo "************ Starting new expr*****************"
## Output config
echo "Config is "
cat ~/$BenchFolder/myconfig.conf
./base_scripts/copy_to_all.sh ../$BenchFolder/myconfig.conf ~/$BenchFolder

## Remove residual output files 
nodes=`cat ~/calvin_bench/nodes`
for node in $nodes
do
   ssh $node rm $BenchFolder'/*output.txt' &
done
wait

## Re-format config 
echo "systype = " $BenchFolder > $Folder/config
echo "benchtype = " m >> $Folder/config
cat ~/$BenchFolder/myconfig.conf >> $Folder/config
cp $Folder/config tmp
awk -F '=' '{printf $2}END{printf "\n"}' tmp > $Folder/config 
awk -F '=' '{printf $1}END{printf "\n"}' tmp >> $Folder/config 

#sleep 110 && ../calvin_bench/base_scripts/parallel_command.sh "`cat ../calvin_bench/others`" "pkill -f benchmark && pkill -f deployment" && pkill -f deployment && pkill -f monitor && pkill -f sar &
cd ../calvin_bench
#./monitor_cpu.sh $Folder 20
cd ../$BenchFolder
../calvin_bench/mytimeout.sh -t 140 ./bin/deployment/cluster -c dist-deploy.conf -p ./src/deployment/portfile -d bin/deployment/db mn 0 #> $Folder/output
#./bin/deployment/cluster -c dist-deploy.conf -p ./src/deployment/portfile -d bin/deployment/db mn 0 #> $Folder/output
cd -

wait
cp ../$BenchFolder/*output.txt $Folder
echo "************ Expr finished *****************"

