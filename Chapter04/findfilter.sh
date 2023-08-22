#!/bin/bash

# ***************************************************************************
# * 
# * @file:findfilter.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-21 21:34 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


#采用find加入maxdepth 和 -not -path './' 来排除本文件夹./

find ./ -maxdepth 1 -type d -not -path "./"

#寻找带.的隐藏文件，可以采用ls |grep的形式，也可采用find寻找模式
echo "ls -A|grep '^\.',res is:"
		ls -A|grep '^\.'


echo "find ./ -maxdepth 1 -type f -name '.*',res is:"
		find ./ -maxdepth 1 -type f -name '.*'

echo "找到当前目录下非隐藏的文件夹，对属性取反，在属性前加-not或!"		
find  ./ -type d ! -name  '.*'   -not -path './' -maxdepth 1
echo "ls -Al grep gawk"
ls -Al |grep -E '^d'|gawk '{print $9'}

echo "ls grep gawk:"
ls -al |grep -E '^d' |gawk '{print $9'}|grep -Ev '\.'

echo "ls grep gawk reg:"
ls -al |grep -E '^d' |gawk '$9 !~/^\./ {print $9}'
