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

