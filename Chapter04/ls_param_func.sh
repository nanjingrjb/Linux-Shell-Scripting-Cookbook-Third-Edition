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

echo "all param is:$*"
for ((i=1;i<$#;i++))
do
	fname="$1"
    echo $fname
    shift 1
    lsparts $(ls -l "$fname")
echo $FILE has $LCOUNT 'link(s)' and is $SIZE bytes long.
done

