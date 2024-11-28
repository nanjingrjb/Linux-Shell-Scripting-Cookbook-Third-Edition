#!/bin/bash

# ***************************************************************************
# * 
# * @file:find_svn_rep.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-20 19:28 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

host=$1
fname=${host}_all_svn

[[ -f $fname ]] && rm $fname 
if [ $host = "jcrj" -o $host = 'home' ]
then
    for i in {c..e}
     do
	find /mnt/${i} -maxdepth 2 -type d -name '.svn' -print >>$fname 2>/dev/null
     done
     sed -i 's/.svn//g;s!/mnt/!!g;s!\/!:\\!1;s!\/!\\!g' $fname
 else
	 #对于手机端，需要从存储处加载值信息
    cp /sdcard/down_$host/$0.sh .
	echo "copy ok"
fi
	 bash scp_all k60 p $fname
exit

