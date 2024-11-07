#!/bin/bash

# ***************************************************************************
# * 
# * @file:findexefrompath.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-07 13:28 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
if [ -e exelst.txt ]
then
	echo "rm old exelst.txt"
	rm exelst.txt
fi


echo $PATH |gawk -F: '{for (i=1;i<=NF;i++) print  $i;}'  >tmplst.txt
while read file
do
	find "$file" -type f -name "*.exe" -print >>exelst.txt 2>/dev/null
done <tmplst.txt

rm tmplst.txt
