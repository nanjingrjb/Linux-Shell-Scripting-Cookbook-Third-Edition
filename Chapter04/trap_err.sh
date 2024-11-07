#!/bin/bash

# ***************************************************************************
# * 
# * @file:trap_err.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-03 07:09 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

function func()
{
	echo "normal in func."
	year=$(date '+%Y%m%d')
	return 0
}



trap 'echo "this is a test.$LINENO:$year."' ERR
func
func2
