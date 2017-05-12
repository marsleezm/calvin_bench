#!/bin/bash
set -e

sleep 3
set +e
./base_scripts/parallel_command.sh "`cat ./others`" "pkill -f deployment/db"
./base_scripts/parallel_command.sh "`cat ./others`" "cd spec_calvin && rm core"
pkill -f "deployment/db"
set -e

ToBench=$1
Type=$2
if [ $ToBench == "aggr_spec_calvin" ];
then
BenchFolder="spec_calvin"
else
BenchFolder=$ToBench
fi
# Folder, bench type, max_batch_size, distribute_percent, dependent_percent,
# index_num, index_size, max_sc, max_pend, max_suspend
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf max_batch_size $3
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf distribute_percent $4

./base_scripts/replace.sh ../$BenchFolder/myconfig.conf dependent_percent $5
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf index_num $6
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf index_size $7
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf max_sc $8
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf max_pend $9
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf max_suspend ${10}
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf multi_txn_num_parts ${11}
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf paxos_delay ${12}


Time=`date +'%Y-%m-%d-%H%M%S'`
CurrentFolder=`pwd`
Folder=$CurrentFolder/results/$Type/$Time
#CurFolder=$CurrentFolder/results/$Type/$ToBench/current
mkdir $Folder

echo "************ Starting new expr*****************"
echo "Config is "
cat ../$BenchFolder/myconfig.conf
./base_scripts/copy_to_all.sh ../$BenchFolder/myconfig.conf ~/$BenchFolder

cd ../$BenchFolder
echo "systype = " $ToBench > $Folder/config
echo "benchtype = " $Type >> $Folder/config
cat myconfig.conf >> $Folder/config
cp $Folder/config tmp
awk -F '=' '{printf $2}END{printf "\n"}' tmp > $Folder/config 
awk -F '=' '{printf $1}END{printf "\n"}' tmp >> $Folder/config 

echo "************ Running expr *****************"
if [ $Type == 't' ]
then
	sleep 85 && pkill -f benchmark && pkill -f deployment && ./base_scripts/parallel_command.sh "`cat ./others`" "pkill -f benchmark && pkill -f deployment"  &
	./bin/deployment/cluster -c dist-deploy.conf -p ./src/deployment/portfile -d bin/deployment/db ${Type}n 0 > $Folder/output
else
	sleep 70 && pkill -f benchmark && pkill -f deployment && ./base_scripts/parallel_command.sh "`cat ./others`" "pkill -f benchmark && pkill -f deployment"  &
	./bin/deployment/cluster -c dist-deploy.conf -p ./src/deployment/portfile -d bin/deployment/db ${Type}n 0 > $Folder/output
	#./bin/deployment/cluster -c dist-deploy.conf -p ./src/deployment/portfile -d bin/deployment/db ${Type}n 0
fi
#ln -s -f $Folder $CurFolder
wait
./base_scripts/copy_from_all.sh output.txt ./spec_calvin $Folder/
cd -
echo "************ Expr finished *****************"

