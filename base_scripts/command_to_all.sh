#!/bin/bash
set -u
set -e
FAIL=0

if [ $# -eq 1 ]
then
    nodes=`cat ./nodes`
    command=$1
elif [ $# -eq 2 ]
then
    nodes=$1
    command=$2
fi


echo $command" for nodes:"$nodes 
for node in $nodes
do
   ssh -o ConnectTimeout=3 -t ubuntu@$node ${command/localhost/$node} 
   sleep 1
done
echo $command done

for job in `jobs -p`
do
    wait $job || let "FAIL+=1"
done

if [ "$FAIL" == "0" ];
then
echo "$command finished." 
else
echo "Fail! ($FAIL)"
fi
