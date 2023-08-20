#!/bin/bash

# ***************************************************************************
# * 
# * @file:floatadd.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-14 10:20 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



floatadd()
{
	a=$1
	b=$2
	c=$(
bc<<EOF
scale=4
$a+$b
EOF
)
echo $c
}


testadd()
{
	lst=(1.1 2.2 3.3)
	t=0
	for i in ${lst[*]}
	do
		echo $i
		t=$(floatadd $t $i)
	done

	echo $t
}

testadd

