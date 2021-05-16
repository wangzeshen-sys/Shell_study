#!/bin/bash

# for 循环批量创建用户，手动输入用户

read -p "请输入用户名前缀|密码|数量:" rep pass num

# 开启匹配
if [[ ! $num =~ ^[0-9]+$ ]] 
then
    echo "Error 数量不是数字,请重新输入数字"
fi
cat <<-EOF
    你输入的用户名前缀是:$rep
    你输入的统一密码是: $pass
    你输入的要创建的数量:$num
EOF
    read -P "你确定要创建吗?[y|n]" aredy
    








