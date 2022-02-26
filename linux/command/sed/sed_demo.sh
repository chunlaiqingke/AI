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


