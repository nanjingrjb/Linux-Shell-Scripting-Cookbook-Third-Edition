#!/bin/bash

# ***************************************************************************
# * 
# * @file:xp.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-04-01 10:17 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



con=("反时限" "过负荷" "三相不一致" "冲击性负荷" "远方跳闸" "断路器接线")
index=1
for i in ${con[*]}
do
	echo -e "$index,$i\n"
	set -x
	hanz=$(findstr $i sys.inf|wc -l)
	xpnum=$(sed -n "/G bh=\"$index\"/p" sys.inf|wc -l)
	if [ $hanz -ge $xpnum ]
	then
		echo "$i hanz=$hanz xpnum=$xpnum 校验成功"
	else
		echo "$i 校验失败"
	fi
	index=$(($index+1))
	
	set +x
done

