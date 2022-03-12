#完整字符串检查，区分大小写
grep "zhao" demo

#多个文件
grep "zhao" demo demo2

#忽略大小写
grep -i "zhao" demo

#查找当前目录下的所有文件
grep -R "zhao"

#查找zhao的行数
grep -c "zhao" demo

#显示不包含zhao的行
grep -v "zhao" demo

#只显示匹配的pattern，而不是整行
grep -o "zhao" demo

#忽略大小写
grep -o -i "zhao" demo