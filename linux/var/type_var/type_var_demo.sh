#!/bin/bash
#有类型变量 -declare命令
#declare和typeset命令完全一样

#变量设置成只读
#declare -r x=1
#echo $x
#x=10  #报错
#echo $x

#变量设置成整形
i1=2022
i2=$i1+1
#在没有设置成整形的时候，加号不会做运算
echo $i2

#当把i3定义成整形的时候，就会认为后面的加法操作是整形的操作，下面的命令等价于使用let命令，let i3=$i1+200
declare -i i3
i3=$i1+200
echo $i3

#一条命令完成变量赋值和设置成环境变量
declare -x c=30

#..................
#-a 讲变量定义成数组
#-x 将变量声明成环境变量，相当于export命令
#-f 显示此脚本前定义过的所有函数和内容
#-F 仅显示此次脚本前定义过的所有函数名