#!/bin/bash

# ***************************************************************************
# * 
# * @file:getNetHost.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-15 08:47 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



ifconfig | cut -c -8 | tr -d ' ' | tr -s '\n'|gawk -F: '{print $1}'

