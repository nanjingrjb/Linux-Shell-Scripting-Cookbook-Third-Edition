#########################################################################
# File Name: addlst.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu May 18 09:23:53 2023
#########################################################################
#!/bin/bash

sum=0
sum1=0
while read num
do 
	sum=$((sum+num))
	sum1=$[sum1+num]
done
echo "sum=$sum"
echo "sum1=$sum1"

