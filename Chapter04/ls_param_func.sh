#!/bin/bash

# ***************************************************************************
# * 
# * @file:ls_param_func.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-05 06:59 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



function lsparts ()
{
    PERMS=$1
    LCOUNT=$2
    OWNER=$3
    GROUP=$4
    SIZE=$5
    CRMONTH=$6
    CRDAY=$7
    CRTIME=$8
    FILE=$9
}
all=$#
for ((i=0;i<$all;i++))
do
	fname="$1"
    echo $fname
    shift
    lsparts $(ls -l "$fname")
	echo $i $FILE has $LCOUNT 'link(s)' and is $SIZE bytes long.
done
echo "param num is :$#"
echo "all param is:$*"
#declare -a args
#args=($*)

