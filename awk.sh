#! /usr/bin/bash

# 打印文件的 第2 到 最后一列  用tab隔开
awk '{for(i=2;i<=NF;++i) printf $i "\t";printf "\n"}' file.txt
# 打印文件的 第2 到 最后一列  用空格隔开 
awk '{for(i=2;i<=NF;++i) printf $i " ";printf "\n"}' file.txt
