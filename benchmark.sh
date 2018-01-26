#!/bin/bash
set -e

set +e
./base_scripts/parallel_command.sh "`cat ./nodes`" "rm spec_calvin/core && rm calvin/core"
pkill -f "deployment/db"
set -e

ToBench=$1
Type=$2
if [ $ToBench == "aggr_spec_calvin" ];
then
BenchFolder="spec_calvin"
elif [ $ToBench == "spec_calvin_skeen" ];
then
BenchFolder="spec_calvin"
elif [ $ToBench == "aggr_spec_calvin_skeen" ];
then
BenchFolder="spec_calvin"
elif [ $ToBench == "calvin_less_recon" ];
then
BenchFolder="calvin"
elif [ $ToBench == "ssmr" ];
then
BenchFolder="ssmr"
elif [ $ToBench == "calvin_general_recon" ];
then
BenchFolder="calvin"
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

if [ $Type == "t" ] 
then
	#Duration=150
	Duration=80
	#Duration=80
else
	#Duration=120
	#Duration=100
	Duration=60
fi
Monitor=$((Duration / 5))
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf duration $Duration
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf multi_txn_num_parts ${9}
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf paxos_delay ${10}
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf update_percent ${11}
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf uncertain_percent ${12}
./base_scripts/replace.sh ../$BenchFolder/myconfig.conf nodes ${13}


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
rm -f *output.txt
echo "systype = " $ToBench > $Folder/config
echo "benchtype = " $Type >> $Folder/config
cat myconfig.conf >> $Folder/config
cp $Folder/config tmp
awk -F '=' '{printf $2}END{printf "\n"}' tmp > $Folder/config 
awk -F '=' '{printf $1}END{printf "\n"}' tmp >> $Folder/config 

echo "************ Running expr *****************"
if [ $Type == 't' ]
then
	sleep $((Duration+25)) && ../calvin_bench/base_scripts/parallel_command.sh "`cat ../calvin_bench/others`" "pkill -f deployment" && pkill -f deployment &
	cd ../calvin_bench
	#./monitor_cpu.sh $Folder $((Monitor+5))
    cd ../$BenchFolder
	./bin/deployment/cluster -c dist-deploy.conf -p ./src/deployment/portfile -d bin/deployment/db ${Type}n 0 > $Folder/output
else
	sleep $((Duration+10)) && ../calvin_bench/base_scripts/parallel_command.sh "`cat ../calvin_bench/others`" "pkill -f deployment" && pkill -f deployment &
	cd ../calvin_bench
	#./monitor_cpu.sh $Folder $((Monitor+2))
    cd ../$BenchFolder
	./bin/deployment/cluster -c dist-deploy.conf -p ./src/deployment/portfile -d bin/deployment/db ${Type}n 0 > $Folder/output
	#./bin/deployment/cluster -c dist-deploy.conf -p ./src/deployment/portfile -d bin/deployment/db ${Type}n 0
fi
cd -
#./base_scripts/copy_from_all.sh output.txt ./spec_calvin $Folder/

wait
cp ../$BenchFolder/*output.txt $Folder
echo "************ Expr finished *****************"

