#!/bin/bash

# ***************************************************************************
# * 
# * @file:calfr.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-14 09:11 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
calmoney()
{
	p=$1
	k=$2
	ps=$( 
bc << EOF
scale=4
$p*$k
EOF
)
		 echo $ps
	
}

calfloat()
{
	val1=$1
	val2=$2
	res=$(
bc<<EOF
iscale=4
$val1+$val2
EOF
)
echo $res
}

calfr()
{
	fname=$1
	sum=0
	exec <"$fname"
	while read info
	do
		if [[ ! -z $info ]]
		then
		name=$(echo $info|gawk '{print  $1}')
		price=$(echo $info|gawk '{print  $2}')
		kilo=$(echo $info|gawk '{print  $3}')
		tmp=$(calmoney $price $kilo)
		sum=$(calfloat $sum $tmp	)
		#a=$(calfloat $sum $tmp	)
		#sum=$a
	fi
	done
	echo $sum
}

calfr "$@"
