#!/bin/bash

# ***************************************************************************
# * 
# * @file:string_ex.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-12 07:56 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

function getinput()
{
	parm=()
	read -p "start=" startn
	echo
	read -p "len=" len
	echo
	parm=($startn $len)
	echo  ${parm[@]}
}

a="this is a test for extend."
echo $a
echo "using \${a:start:len} to get substr"
parm=($(getinput))

echo ${a:${parm[0]}:${parm[1]}}

