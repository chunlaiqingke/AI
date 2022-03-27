#!/bin/bash
#简易的编辑器, 依赖我接下来输入的内容, ctrl + D  结束
cat > newfile.txt

# > 覆盖原来的内容，重新写入
ls > newfile.txt

# >> 在已有的文件后追加文本
ls >> newfile.txt

#强制覆盖
#在设置noclobber选项之后，普通的覆盖是不被允许的，只能强制覆盖
set -C
date > newfile.txt  #会报错，不允许覆盖
date >| newfile.txt  #可以执行成功
