#!/bin/bash
node_file=`cat nodes`
scale=$1
num_line=`cat nodes | wc -l`
if [ $scale -gt $num_line ]
then
	echo "Scale is larger than number of nodes:"$num_line
else 
	total_nodes=$((factor*num_line))
	count=0
	for node in $node_file 
	do
		if [ $count -lt $scale ]	
		then
			echo "node"$count"=0:"$count":8":$node:$((j+54575)) 
			count=$((count+1))
		else
			break
		fi
	done
fi
