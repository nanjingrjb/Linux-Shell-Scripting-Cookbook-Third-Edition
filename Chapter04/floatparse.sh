#########################################################################
# File Name: floatparse.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed May 31 23:22:31 2023
#########################################################################
#!/bin/bash
checkint()
{
	local left
	local or=$(echo $1)
	#截取负数的第一个符号
	local fst=${or%${or#?}}
	if [ $fst = '-' ];then
		or=${or#-}
	fi
	 left=$(echo $or|sed 's/[[:digit:]]//g')
	

	 if [ -z $left ];then
		echo 0
	else
		echo 1
	fi
}
float()
{
	in=$(echo $1)
	int=${in%.*}
	dec=${in#*.}
	if [ $dec = $in ];then
		echo "it seems an int."
		v1=$(checkint $in)
		if [ $v1 -eq 0  ] ;
		then echo "valid int."
		else
			echo "wrong int."
		fi
	else
		#echo $int
		v1=$(checkint $int)
		#echo $dec
		v2=$(checkint $dec)
		if [ $v1 -eq 0 -a $v2 -eq 0 ] ;
		then echo "valid float."
		else
			echo "wrong float"
		fi
	fi

}

float $1
