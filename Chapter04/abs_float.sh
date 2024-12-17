#!/bin/bash

# ***************************************************************************
# * 
# * @file:abs_float.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-17 18:07 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

arr=$*
for i in ${arr[@]}
do
	abs=${i#*-}
	abs=${abs%.*}
	abs=$((abs+1))
	echo $abs
done



