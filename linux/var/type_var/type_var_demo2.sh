#!/bin/bash
#双小括号 ((..))可以实现c语音风格的变量操作

var1=20
var2=30
#这样只是字符串相拼
#result=$var1*$var2
result=$((var1*var2))
echo $result