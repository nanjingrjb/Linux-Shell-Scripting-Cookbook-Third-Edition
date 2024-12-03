#!/bin/bash

# ***************************************************************************
# * 
# * @file:param_default.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-03 07:59 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



dir=${1:-'./'}

type=${2:-'f'}

key=${3:-'*.sh'}

find $dir -type $type -name "$key" -print

