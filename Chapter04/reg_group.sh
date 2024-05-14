#!/bin/bash

# ***************************************************************************
# * 
# * @file:reg_group.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-05-14 14:07 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



 echo "This is lili's book and john's pen." | grep -Eo "(\w+)'s (\w+)"|sed "s/'s//g"


