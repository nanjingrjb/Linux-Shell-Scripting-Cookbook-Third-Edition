#!/bin/bash

# ***************************************************************************
# * 
# * @file:trap_exit.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-03 06:57 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

function year_fun()
{
	echo "test."
	year=2014
	return 0
}


trap 'echo "this is a test.line=$LINENO,year=$year" ' EXIT
year_fun
