#!/bin/bash

# ***************************************************************************
# * 
# * @file:wc_path_cnt.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-25 16:43 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

echo $PATH|gawk 'BEGIN{FS=":"; OFS="\n"} {
for (i=1;i<NF;i++)
	{
		print $i
	}
}' >dir.txt

cnt=0
while read line
do
	#num=$(ls "$line"|wc -l)	
	#echo "$cnt:start ls $line,num=$num"
	#cnt=$[cnt+1]
	if [ !  -e "$line" ]
	then
		echo "$line" > misspath.txt
	fi
done<"./dir.txt"


