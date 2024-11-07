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

src="$1"
echo $src
des1="${src}""sysall/"

if [ -e "${des1}" ]
then
	rm -fr $des1
fi


find ./*/ -path "${src}/""厂*/*" -prune -o -type f -name "sys.inf" -print|while read -r FILE;
do
	rel_path=$(echo $FILE|gawk -F / '{print $2}')
	#echo $rel_path
	des="${des1}/${rel_path}"
	mkdir -p $des
	cp $FILE $des
done


find $des1 -type f -name "sys.inf" -print |while read sys
do
	sed -i -n '/<R/,$p' ${sys} 
done

python sysReadKg.py $src










