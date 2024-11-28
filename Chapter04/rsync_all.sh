#!/bin/bash

# ***************************************************************************
# * 
# * @file:rsync_all.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-20 23:06 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



lst=(k60 home oppo jcrj)
for i in ${lst[*]}
do
	bash scp_all "${i}" p $(ls -t|head -n 10)
done

