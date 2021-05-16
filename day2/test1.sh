#!/bin/bash
# 按照时间生成文件，将每天的磁盘使用状态写入到对应的文件

# Time=$(date +%F)

# df -h > $Time.log
# 


DIR=/home/wzs/Desktop/shell/Shell_study/day2
cd $DIR
for file in ; do 
    file_name=`echo $file | sed -nr 's#(.)..*#'p`
    mv $file ${file_name}.log
    echo $file is






