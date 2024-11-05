#!/bin/bash

# ***************************************************************************
# * 
# * @file:array_test.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-05 08:04 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#数组可以使用小括号来定义，中间用空格隔开
#
arr=($(ls *a*.sh))
echo ${arr[*]}

