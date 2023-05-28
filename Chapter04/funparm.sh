#########################################################################
# File Name: funparm.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun May 28 16:36:41 2023
#########################################################################
#!/bin/bash
#
sum=$#
echo $sum
echo $1
echo $2

all=$@

for i in $all;do
	echo $i
done

