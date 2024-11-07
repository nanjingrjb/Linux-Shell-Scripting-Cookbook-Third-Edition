#!/bin/bash

# ***************************************************************************
# * 
# * @file:while_skh.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-04 08:03 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



a=1
while((a<=5))
do
	echo $(($a+1))
	a=$((a+1))
done



