#!/bin/bash

# ***************************************************************************
# * 
# * @file:fuhao.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-18 23:37 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
a=2
b=6
c=10
echo "(()) 应用于整数算数及逻辑运算"
set -x
(($a<$b&&$a<$c))&&echo ok||echo no
echo "$a+$b+$c=$(($a+$b+$c))"
echo "[] 应用逻辑运算-gt 有格式要求"
[ $a -lt $b -a $a -lt $c ]&&echo ok||echo no


set +x
