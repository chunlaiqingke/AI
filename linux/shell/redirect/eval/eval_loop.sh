#!/bin/zsh

#这个shell比较难理解，done < evalsource这一行，从evalsource文件作为标准输入
#read 从标准输入读取值，赋给name 和 value变量，用空格分开
#eval 是对后面的"${NAME}=${VALUE}"这个玩意进行2次扫描，第一次是进行变量替换，第二次是进行命令执行，也就是赋值，
#如果使用注释的那句echo替换eval，你就会发现区别了，echo也有变量替换，但是没有命令执行，也就是${NAME}所代表的变量并没有被赋值

while read NAME VALUE
do
#  echo "${NAME}=${VALUE}"
  eval "${NAME}=${VALUE}"
done < evalsource
echo "var1=$var1"
echo "var2=$var2"
echo "var3=$var3"
echo "var4=$var4"
echo "var5=$var5"

