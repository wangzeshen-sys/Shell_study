#!/bin/bash

# 求100以内偶数的和

# sum=0
# for I in {1..50}; do
#     sum=$(($sum+2*$I))
# done
# echo "the sum is $sum"

let SUM=0
for I in $(seq 1 100); do
   if [ $[$I%2] == 0 ]; then
         let  SUM+=$I
   fi
done
echo "the sum is $SUM"
