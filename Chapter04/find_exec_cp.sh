#!/bin/bash

# ***************************************************************************
# * 
# * @file:find_exec_cp.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-20 13:27 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



find . -path './.*' -prune -o -type f -ctime -10 -print -exec cp {} /sdcard/down_k60/root \;

