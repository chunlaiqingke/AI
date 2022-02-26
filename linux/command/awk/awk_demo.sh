#这时用的分割符是空格或者TAB
awk '{print $1}'

#指定分隔符{FS=":"}
awk '{FS=":"} $3 < 10 {print $1 "\t" $3}'