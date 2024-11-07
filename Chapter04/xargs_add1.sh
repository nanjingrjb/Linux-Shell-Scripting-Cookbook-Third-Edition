#!/bin/bash

# ***************************************************************************
# * 
# * @file:xargs_add1.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-04 10:54 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#采用xargs来调用seq产生的数据，并对这些数据加1

seq 5|xargs -I {} bash add1.sh {}

