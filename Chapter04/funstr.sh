#!/bin/bash

# ***************************************************************************
# * 
# * @file:funstr.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-03-20 07:47 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



function lsparts ()
{
   echo "res=$*"
   echo "$*"|grep -E '^total'
   if [ ! $? -eq 0 ]
   then
	   echo "file"
    PERMS=$1
    LCOUNT=$2
    OWNER=$3
    GROUP=$4
    SIZE=$5
    CRMONTH=$6
    CRDAY=$7
    CRTIME=$8
    FILE=$9
    else
		echo "dir"
		SIZE=$2
   fi
}

lsparts $(ls -l "$1")

echo $PERMS|grep -E ^-
if [ $? -eq 0 ]
then echo $FILE has $LCOUNT 'link(s)' and is $SIZE bytes long.
else
 echo "$1" has $LCOUNT  $SIZE bytes long.
fi

