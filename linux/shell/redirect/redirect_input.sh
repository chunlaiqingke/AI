#!/bin/zsh
wc -l newfile.txt redirect.sh

#newfile.txt作为标准输入
wc -l < newfile.txt

#cat >> newfile.txt 仍然是个终端输入的文本编辑器，以OVER为结束符，而不是ctrl + D
cat >> newfile.txt << OVER