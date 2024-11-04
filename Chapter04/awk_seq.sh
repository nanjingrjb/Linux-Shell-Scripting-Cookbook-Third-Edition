#!/bin/bash

# ***************************************************************************
# * 
# * @file:awk_seq.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-04 08:12 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



seq 5|awk '{$2=$1+1;print $0}'

