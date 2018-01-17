#!/bin/bash
node_file=`cat nodes`
factor=$1
num_line=`cat nodes | wc -l`
total_nodes=$((factor*num_line))
count=0
for node in $node_file 
do
    for j in $(seq 1 $factor) 
    do
        echo "node"$count"=0:"$count":8":$node:$((j+54575)) 
        count=$((count+1))
    done
done
