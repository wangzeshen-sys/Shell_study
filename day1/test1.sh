#! /usr/bin/bash

# 查看磁盘/当前使用状态，如果使用率超过百分之80发送邮件提醒
# 超过80% 写入到文件中
# df -h |grep '/$' | awk '{print $5}'
# df -h |grep '/$' | awk '{print $(NF-1)}'
# NF 当前行的最后一个值

Disk_Free=$(df -h |grep '/$' | awk '{print $(NF-1)}'|awk -F '%' '{print $1}')

if [ $Disk_Free -ge 10 ]; then
    echo "Disk is Use:$Disk_Free%" > /tmp/disk_use.txt
fi

# echo $Disk_Free


