#!/bin/bash

#设置当前脚本的超时时间
TMOUT=5

echo "what is your name?"
#读取键盘输入，赋给变量name
read name
#如果name变量是空
if [ -z "$name" ] ; then
  name="no answer"
fi
echo "your name is $name"