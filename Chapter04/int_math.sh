#!/bin/bash

# ***************************************************************************
# * 
# * @file:int_math.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-10-31 13:29 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


a=1
b=2
echo "方法1：使用\'\$[ \$a+\$b ]\'来计算"
echo "$a+$b=$[ $a+$b ]"

echo "方法2：使用\'\$((\$a+\$b))\'来计算"
echo "$a+$b=$(($a+$b)) "





