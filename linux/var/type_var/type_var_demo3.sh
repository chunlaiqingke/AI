#!/bin/bash
#间接变量，可以理解成变量多了一层引用

var1=var2
var2=hadoop
echo "var1=$var1"
eval tempvar=\$$var1
echo "tempvar=$tempvar"
echo "indirect ref var is :${!var1}"   #mac这一行会报错 bad substitution


#间接变量的应用场景
#学生的名字拼成的属性变量，去属性的值，就可以使用间接变量的场景
