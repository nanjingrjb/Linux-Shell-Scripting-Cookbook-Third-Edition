#!/bin/bash

# ***************************************************************************
# * 
# * @file:eval_arr.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-27 23:27 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



function getval()
{
	index=$1
	shift 
	arr=($*)
    echo ${arr[$index]}	
    printf "all len is %d\n" "$#"
    printf "the last three parm is:\n"
	printf "the last parm is %d\n" $(eval echo \$$(($#)))
	printf "the last-1 parm is %d\n" $(eval echo \$$(($#-1)))
	printf "the last-2 parm is %d\n" $(eval echo \$$(($#-2)))
}

getval $*

