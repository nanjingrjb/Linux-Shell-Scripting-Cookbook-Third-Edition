#########################################################################
# File Name: sortusing.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Jul 26 07:00:56 2023
#########################################################################
#!/bin/bash
echo "sort 用于处理列表输入"

seq 1 9|sort -nr

#将字符串转为列表
changestr2lst()
{
	for i in $1;
	do echo $i
	done
}
changearr2lst()
{
	for i in $*;
	do echo $i
	done
}

changestr2lst "1 3 -56 20 36 87"|sort -nr

arr=(1 3 -56 20 36 87)

changearr2lst ${arr[*]}|sort -nr
