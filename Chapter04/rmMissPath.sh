#!/bin/bash

# ***************************************************************************
# * 
# * @file:rmMissPath.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-26 14:50 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 




while read miss
do
	echo $PATH|sed '/$miss/d'
done<"./misspath.txt"
