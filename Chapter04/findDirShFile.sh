#!/bin/bash

# ***************************************************************************
# * 
# * @file:findDirShFile.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-10-30 10:01 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#寻找当前目录下的所有sh文件

dir=$(pwd)

#方法1：采用ls来搜索*.sh文件
for i in $(ls -d */)
do
	ls -al $i*.sh 2>/dev/null 1>>tmp.txt
done

gawk '{print $9}' tmp.txt
rm tmp.txt

#方法2：采用find指令来搜索

echo "方法二"
for i in $(ls -d */)
do
	find $i -name "*.sh" -type f 2>/dev/null 1>>tmp.txt
done
cat tmp.txt|wc -l
rm tmp.txt


echo "采用find直接寻找"
basename -s $(find $dir/*/ -type f -name "*.sh" -print)


echo "find中prune的使用"
#采用find中的prune来排除指定的目录
find $dir/*/ -path "$dir/j*/" -prune -o -type f -name "*.sh" -print


echo "使用多个目录排除，注意要使用转义括号，且每个path以-o连接"
echo "find ./*/ \( -path ./*a*/ -o -path ./*c*/ \) -prune -o -type f -name '*.sh'"
find ./*/ \( -path "./*a*/" -o -path "./*c*/" \) -prune -o -type f -name "*.sh" -print



echo "排除法用find来查找对应的文件夹,采用! \( -iname '*c*' -o -iname '*a*' \)"

find ./*/ \( -path "./*c*/" -o -path "./*j*/" \) -prune -o  -type d ! \( -iname "*i*" -o -iname "*a*" \)  -print
