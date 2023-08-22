#!/bin/bash

# ***************************************************************************
# * 
# * @file:gawkfilter.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-22 23:42 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



echo "gawk匹配对应的项目"

cat /etc/passwd|gawk -F: '$4 ~/104/ {print $0}'

echo "\$4小于100的用户为:"
cat /etc/passwd|gawk -F: '$4<100  {print $1}'
echo "grep输出:"
grep -E '104' /etc/passwd

