#!/bin/bash

# ***************************************************************************
# * 
# * @file:sed_famwei.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-05 12:28 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


sed -n  '1,/done/p' while_skh.sh
sed -n  '/do/,/done/p' while_skh.sh

