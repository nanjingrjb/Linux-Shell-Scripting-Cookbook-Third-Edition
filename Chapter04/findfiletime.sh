#!/bin/bash

# ***************************************************************************
# * 
# * @file:findfiletime.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-18 15:09 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
findfile_min()
{
	set -x
	despath=$1
	timeold=$3
	timenew=$2

	find "$despath" -maxdepth 1\
		-amin  "+$timenew" \
	-a	-amin "-$timeold"\
	-type f
	set +x
}

findfile_day()
{
	set -x
	despath=$1
	timeold=$3
	timenew=$2

	find "$despath" -maxdepth 1\
		-atime  "+$timenew" \
	-a	-atime "-$timeold"\
	-type f
	set +x
}
findfile_min "$@"
findfile_day "$@"



