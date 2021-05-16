#!/bin/bash

# 利用for语句ping cat类网 ping B类网
# read -p "C NETWORK:" MYENT
# PINGNET=`echo $MYENT | sed 's/\([0-9.]*\.[0-9]*/\1\g'`
# let I=1
# while [ $I -le 254 ]
# do 
#     ping -c1 -w1 $PINGNET.$I &>/dev/null
#     [ $? -eq 0 ] && echo "$PINGNET.$I online" || echo "$PINGNET.$I offline."
#     let I++
# done

read -p "B network:" MYENT
PINGNET=`echo $MYNET | sed 's/\([0-9]\{1,3\}\.[0-9]\{1,3\}\)\..*/\1/g'`
for P iin {0..255}
do
    for I in {1..255}
    do
        if ping -c1 -w2 $PINGNET.$P.$I &>/dev/null
        then
            echo "$PINGNET.$P.$I is online."
        else
            echo "$PINGNET.$P.$I is offline."
        fi
    done
done







