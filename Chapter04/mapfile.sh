#!/bin/bash

# ***************************************************************************
# * 
# * @file:mapfile.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-03-20 12:57 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



# 用mapfile读取$1中的文件

# 用点号显示读取进度
function showprg ()
{
    printf "."
}

# 创建一个比较大的数据文件备用
#ls -l /usr/bin > /tmp/myfile.data

# 将数据文件读入数组BIGDATA
mapfile -t -s 1 -n 1500 -C showprg -c 100 BIGDATA < ./arr.sh

# 在showprg输出的结尾加上一个换行符
echo
# 读取了多少行？
siz=${#BIGDATA[@]}
echo "size: ${siz}"


#echo "逐行读取文件arr.sh"
#while read line
#do echo $line
#done <"./arr.sh"

echo "按行解析文本，并存入数组"
arr=()
while read line
do 
	arr=(${arr[*]}  $line)
	echo $line
done
< './arr.sh'

echo "解析含有echo的行"
for m in ${arr[*]}
do 
	echo $m|grep -E 'echo'
	if  [ $? -eq 0 ]
	then echo $m
	fi
done
