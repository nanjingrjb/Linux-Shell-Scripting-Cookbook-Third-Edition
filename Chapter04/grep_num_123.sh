#!/bin/bash

# ***************************************************************************
# * 
# * @file:grep_num_123.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-24 09:55 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 




echo "寻找一位数:grep -En '\<[0-9]{1}\>' a.txt"
grep -En '\<[0-9]{1}\>' a.txt
