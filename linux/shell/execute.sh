#!/bin/bash
#使用反引号，让指令执行，res获取返回结果，注意：$?是获取退出状态值，不是获取返回结果
res=`date`
echo $res

#用$加小括号也行，作用和反引号等价
res=$(date)
echo $res