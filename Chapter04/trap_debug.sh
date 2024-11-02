#!/bin/bash

# ***************************************************************************
# * 
# * @file:trap_debug.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-03 07:20 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



trap 'echo "before run exit $LINENO,num1=$num1,num2=$num2,num=$num3·" ' DEBUG

declare num1=0
declare num2=1
declare num3=2

while :
do
	if ((num1 >=10 ))
	then
		break
	fi
	num1=$((num1+1))
	num2=$((num2+2))
	num3=$((num3*10))

done
