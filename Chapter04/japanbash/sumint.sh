#########################################################################
# File Name: sumint.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Sat Jul 29 20:46:06 2023
#########################################################################
#!/bin/bash

sumint()
{
	funname=${0##*/}
	#res=0

#	echo "all parm is $@"
	if [[ -z $1 ]]
	then
		echo "usage: $funname int1 int2 ...."
		exit
	fi

	for i in "$@"
	do
 #       echo "now val is $i"
		if [[ ! $i =~ ^-?[0-9]+$ ]]
		#if [[ ! $i =~ "^-?[0-9]+$" ]]
		then echo "input invalid int."
			exit
		else
			res=$((res+$i))
		fi
	done
	echo "sum is $res"
}

sumint "$@"

