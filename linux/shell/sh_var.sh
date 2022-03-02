#!/bin/bash
declare -i num=0
declare -i res=0
while [ $num -lt $1 ]
do
        num=$num+1
        res=$res+$num
        echo "res: $res"
done


exit 0
