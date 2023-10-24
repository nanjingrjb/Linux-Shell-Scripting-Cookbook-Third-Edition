#!/bin/bash

# ***************************************************************************
# * 
# * @file:sedfunc.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-23 18:01 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



s/end/start/g
s/[0-9]{1,}/x/g
/^[[:space:]]*$/d

1,3a\rjb
/rjb/d
/star/d
