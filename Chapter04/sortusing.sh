#########################################################################
# File Name: sortusing.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Jul 26 07:00:56 2023
#########################################################################
#!/bin/bash
echo "sort 用于处理列表输入"

seq 1 9|sort -nr

changearr2lst()
{
	for i in $*;
	do echo $i
	done
}
#单个字符串转化为字符列表
changestr2lst()
{
	str=$*
	len=${#str}
	echo "$str,${#str}"
}


changearr2lst "1 3 -56 20 36 87"|sort -nr

arr1=(1 3 -56 20 36 87)

changearr2lst ${arr1[*]}|sort -nr
arr2="thisisatest"

echo $arr2|fold -w 1|sort -nr

