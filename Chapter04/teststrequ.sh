#########################################################################
# File Name: teststrequ.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Apr 17 07:43:06 2023
#########################################################################
#!/bin/bash
if [ $1 = "rich" ];then
	echo "$1 equal."
else
	echo "$1"
fi
if [ ! $2 = 'poor' ];then
	echo "$2 not 'poor'"
else
	echo "$2"
fi

string1=Soccer
string2=''
#
if [ -n $string1 ]
then
     echo "The string '$string1' is NOT empty"
else
     echo "The string '$string1' IS empty"
fi
#
if [ -z $string2 ]
then
     echo "The string '$string2' IS empty"
else
     echo "The string '$string2' is NOT empty"
fi
#
if [ -z $string3 ]
then
     echo "The string '$string3' IS empty"
else
     echo "The string '$string3' is NOT empty"
fi

