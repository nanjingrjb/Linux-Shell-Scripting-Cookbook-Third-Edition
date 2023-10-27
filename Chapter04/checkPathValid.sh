#!/bin/bash

# ***************************************************************************
# * 
# * @file:checkPathValid.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-27 10:10 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



echo $PATH|gawk -F: '{for(i=1;i<NF;i++)
						print $i}'  >'pathdir.txt'



mypath=$PATH
first=1
while read elm
do
	if [ ! -d "$elm" ];then
		echo "dir $elm no exist."
		if [ $first -eq 1 ];then
			first=0
			echo "$mypath"|sed   "s#$elm##g" >tmp_path.txt
		else
		    cat "$mypath"|sed  "s#$elm##g" >tmp_path.txt
		fi
		mypath=tmp_path.txt
	fi
done<'pathdir.txt'

