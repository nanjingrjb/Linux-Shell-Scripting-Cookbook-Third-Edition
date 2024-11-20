#!/bin/bash

# ***************************************************************************
# * 
# * @file:jcrj_update_git.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-15 15:57 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 




wsl 
cd /mnt/e 
cd $(aliaspath mybash)
git pull 
git push
exit
