#!/bin/bash

#输出字符串变量的长度
str="one world one dream"
echo ${#str}

#expr总是显示过时，不知道为啥，指令老是报错

#字符串截取，第一个字符的序号是0，
# 取第10个之后的字符串
echo ${str:10}   # echo "${str:10}"   带引号和不带引号都可以
#取第10个之后长度为5的字符串
echo "${str:10:5}"
#倒数第11个字符往后，注意，冒号和减号之间有空格，
echo "${str: -11}"   #echo "${str:(11)}"也可以，这样就不用打空格了


#删除子串
str_minus="20091114ReadingHadoop"
#${string#substring} 删除开头处与子串匹配的最短子串
echo ${str_minus#2*1}
#${string#substring} 删除开头处与子串匹配的最长子串
echo ${str_minus##2*1}

#${string%substring} 删除结尾处与子串匹配的最短子串
echo ${str_minus%a*p}
#${string%%substring} 删除结尾处与子串匹配的最长子串
echo ${str_minus%%a*p}


#替换子串
str_replace="10091111world222111dream"
#替换第一次与substring匹配的子串
#${string/substring/replacement}
echo ${str_replace/111/city}
#替换所有与substring匹配的子串
#${string//substring/replacement}
echo ${str_replace//111/city}
#替换开头处与substring匹配的子串
#${string/#substring/replacement}
echo ${str_replace/#1009/city}
#替换结尾处与substring匹配的子串
#${string/%substring/replacement}
echo ${str_replace/%dream/city}