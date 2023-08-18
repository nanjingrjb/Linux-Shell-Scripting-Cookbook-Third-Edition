#!/bin/bash

# ***************************************************************************
# * 
# * @file:exptest.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-18 22:58 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



source isroutok.sh
set -x
testroute "$@"
set +x

