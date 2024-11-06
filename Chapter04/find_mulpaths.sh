#!/bin/bash

# ***************************************************************************
# * 
# * @file:find_mulpaths.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-06 08:07 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



find $(echo $PATH|sed 's/:/ /g'|xargs -n1 echo) -path $(pwd) -prune  -o -type f -name "*.sh" -print 2>/dev/null

