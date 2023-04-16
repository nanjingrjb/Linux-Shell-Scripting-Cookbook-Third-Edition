#########################################################################
# File Name: teststrequ.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Apr 17 07:43:06 2023
#########################################################################
#!/bin/bash
if [ $1='rich' ];then
	echo "$1 equal."
else
	echo "$1"
fi
if [ !$2='poor' ];then
	echo "$2 not 'poor'"
else
	echo "$2"
fi
