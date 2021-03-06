#sed 命令的功能：替换，删除，新增，选取特定行等...


#下面的写法不会影响源文件，也就是test文件不会变，只是操作的缓冲区

#显示2到5行的内容， p表示打印
nl test | sed  -n '2,5p'

#删除2到5行， d表示删除
nl test | sed  '2,5d'

#删除2到最后一行， $表示最后一行
nl test | sed  '2,$d'

#在第二行后面插入一行，drink tea
nl test | sed  '2a drink tea'

#修改第一个匹配daemon的字符串替换成new_daemon，只修改缓冲区的，源文件demo不变
sed 's/daemon/new_daemon/' demo

#修改所有匹配daemon的字符串替换成new_daemon，只修改缓冲区的，源文件demo不变
sed 's/daemon/new_daemon/g' demo

#修改第一个匹配daemon的字符串替换成new_daemon，修改源文件demo
sed -i 's/daemon/new_daemon/' demo

#讲修改后的内容保存到output中
sed 's/daemon/new_daemon/w output' demo

#只将修改后的行保存到output中
sed -n 's/daemon/new_daemon/w output' demo

#w选项可以在任何情况下使用，不一定是修改操作
sed '2,5 w output' test


#在test文件中所有匹配到Directory字符串的行的后面插入insertfile的内容
sed '/Directory/r insertfile' test


#ps: mac版的sed和linux版的sed有所区别，为了安全修改操作他要求做备份
#example
sed -I "" -E "s/daemon/new_daemon/" demo