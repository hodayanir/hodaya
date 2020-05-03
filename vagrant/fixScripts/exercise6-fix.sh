#!/bin/bash
#add fix to exercise6-fix here
myArray=( "$@" )
if [ $(hostname)=="server1" ]
then
        server=server2
else
        server=server1
fi

remoteLocation="${myArray[-1]}"

for (( i=0; i< "${#myArray[@]} -1"; i++ ))
do
   scp ${myArray[$i]} "$server":$remoteLocation #| awk '{s+=$8} END {print s}'
done
