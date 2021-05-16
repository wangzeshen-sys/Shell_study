#!/bin/bash
read –p "please input a username:"  USER
if cut –d：-f1  /etc/passwd | grep "^$USER$" &> /dev/null ;then
    MYBASH=`grep  "^$USER:"  /etc/passwd | cut –d :  -f7`
    echo "${USER}'s shell is $MYBASH"
else
    echo "$USER not exists."
    exit  4
fi