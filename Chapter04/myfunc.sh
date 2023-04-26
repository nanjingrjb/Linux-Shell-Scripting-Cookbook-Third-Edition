#########################################################################
# File Name: myfunc.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed Apr 26 15:44:12 2023
#########################################################################
#!/bin/bash

function diffarr()
{
	echo "start diff arr now."
	arra=$1
	arrb=$2
	echo "$1"
	echo "$2"
	echo $3
	echo $*
}
a=(3 4 5)
b=(1 2 3)
#echo ${a[@]}
#echo ${#a[@]}
diffarr ${a[*]}  ${b[*]}
