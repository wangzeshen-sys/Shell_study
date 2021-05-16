#!/bin/bash
# if [[ -z "$1" ]];then
#    newfile=~/newscript_`date +%m%d_%S`
# else
#    newfile=$1
# fi
# if  ! grep "^#!" $newfile &>/dev/null; then
# cat >> $newfile << EOF
# #!/bin/bash
# # Author: Inert Your Name here.
# #Date & Time: `date +"%F %T"`
# #Description: Please Edit here.
# EOF
# fi
# vim +5 $newfile

# 输入三个数  判断最大值
echo "please enter three number:"
read -p "the first number is:" n1
read -p "the second number is:" n2
read -p "the third number is:" n3

MAX=$n1
len=$#
if [ $n2 -ge $n1 ];then
    MAX=$n2
fi
if [ $n3 -ge $MAX ];then
    MAX=$n3
fi

echo "the max number is $MAX"
echo "args=$len"













