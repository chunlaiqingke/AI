#!/bin/zsh

#定义一个管道符变量
pipe="|"

#这条指令是报错的，因为shell在解析的时候，$pipe还没被替换
ls $pipe wc -l

#使用eval 把命令的参数作为命令执行，这样就不会报错了
eval ls $pipe wc -l