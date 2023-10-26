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





echo "采用gawk解析，带分隔符的数据"
anum=$(echo $PATH|gawk -F: '{print NF}')
echo "anum=$anum"

echo $PATH|gawk 'BEGIN{FS=":"; OFS="\n"} {
for (i=1;i<NF;i++)
	{
		print $i
	}
}' >dir.txt




num=$(echo $PATH|grep -Eo ":"|wc -l)
echo "num=$[num+1]"
