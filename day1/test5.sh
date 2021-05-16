#! /usr/bin/bash

# for i in $(cat test2.sh)
# do 
#     echo $i
# done

# while date
# do
#     date
#     sleep 1
# done


# function hello() {
#     echo "第一种函数定义的方式"
# }

# hello1() {
#     echo "第二中函数定义的方式"
# }

# hello
# hello1

# File=/etc/passwd
# count() {
#     local i=0
#     while read line
#     do 
#         let i++
#     done<$File
#     echo "$File is count $i"
# }

# count





# ###################################

file=/etc/pa

t_file() {
    if [ -f $file ] 
    then
        return 0
    else
        return 1
    fi
}

t_file
if [ $? -eq 0 ] 
then
    echo "文件存在 $file"
else
    echo "文件不存在 $file"
fi











