#!/bin/bash

FAIL=0
echo $command" for nodes:"$nodes 
if [ $# -eq 1 ]
then
    nodes=`cat ./nodes`
    file=$1
    path=~
elif [ $# -eq 2 ]
then
    nodes=`cat ./nodes`
    file=$1
    path=$2
else
    nodes=$1
    file=$2
    path=$3
fi
echo "Path is "$path
for node in $nodes
do
    scp $file ubuntu@$node:$path & 
done

for job in `jobs -p`
do
    wait $job || let "FAIL+=1"
done

echo "Copying finished"
