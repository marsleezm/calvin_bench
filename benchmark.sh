#!/bin/bash
set -e

ToBench=$1
Type=$2


# Folder, bench type, max_batch_size, distribute_percent, dependent_percent,
# index_num, index_size
./base_scripts/replace.sh ../$ToBench/myconfig.conf max_batch_size $3
./base_scripts/replace.sh ../$ToBench/myconfig.conf distribute_percent $4

if [ $Type == 'm' ];
then
	./base_scripts/replace.sh ../$ToBench/myconfig.conf dependent_percent $5
	./base_scripts/replace.sh ../$ToBench/myconfig.conf index_num $6
	./base_scripts/replace.sh ../$ToBench/myconfig.conf index_size $7
fi


Time=`date +'%Y-%m-%d-%H%M%S'`
CurrentFolder=`pwd`
Folder=$CurrentFolder/results/$Time
mkdir $Folder

echo "************ Starting new expr*****************"
echo "Config is "
cat ../$ToBench/myconfig.conf
./base_scripts/copy_to_all.sh ../$ToBench/myconfig.conf ~/$ToBench

cd ../$ToBench
echo "************ Running expr *****************"
./bin/deployment/cluster -c dist-deploy.conf -p ./src/deployment/portfile -d bin/deployment/db ${Type}n 0 > $Folder/output
cd ..
cp ../$ToBench/myconfig.conf ./$Folder
echo "************ Expr finished *****************"
