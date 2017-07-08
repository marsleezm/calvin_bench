#!/bin/bash

folder=$1
times=$2
nodes=`cat ./nodes`
for node in $nodes
do
    ssh $USER@$node  "sar -P ALL 5 $times" > $folder/$node-sarout &
done
