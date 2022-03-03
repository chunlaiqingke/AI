#!/bin/bash
if [ ! -n "$1" ]; then 
	echo 'lack param'
	exit -1
fi
declare -i i=$1
declare -i res=0
while [ $i -gt 0 ] 
do
	res=$res+$i
	i=$i-1
done
echo $res
exit 0	
