#########################################################################
# File Name: wccmd.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu Jun  1 19:55:47 2023
#########################################################################
#!/bin/bash
IFS=':'

count=0
nocnt=0
for dir in $PATH;do
echo $dir
	if [ -d $dir ];then
		for cmd in $dir/*;do
			if [ -x $cmd ];then
				count=$((count+1))
			else
				nocnt=$((nocnt+1))
			fi
		done
	fi
	done
	echo -e "total cmd num is $count.\nno exec file is $nocnt."
