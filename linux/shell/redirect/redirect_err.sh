#!/bin/zsh

#这种是不会写入文件的，只会在控制台输出
ls zz77 > newfile.txt

#讲标准错误输出重定向到文件中，大于号前面加2
ls zz77 2> newfile.txt