#!/bin/bash

# ***************************************************************************
# * 
# * @file:opysys.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-04 15:02 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

des1='./sysall/'
if [ -e $des ]
then
	rm -fr $des
fi

find ./*/ -path "./厂*/*" -prune -o -type f -name "sys.inf" -print|while read -r FILE;
do
	rel_path=$(echo $FILE|gawk -F / '{print $2}')
	echo $rel_path
	des="${des1}/${rel_path}"
	mkdir -p $des
	cp $FILE $des
done


sleep 2

find $des1 -type f -name "sys.inf" -print |while read sys
do
	sed -i -n '/<R/,$p' ${sys} 
done

"D:/Program Files (x86)/Python38/python.exe" e:/SAL_WORK/3-CFG_ALL/02_HSCfg/sysReadKg.py








