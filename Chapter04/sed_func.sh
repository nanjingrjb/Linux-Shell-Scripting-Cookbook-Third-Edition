#!/bin/bash

# ***************************************************************************
# * 
# * @file:sed_func.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-23 20:30 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



sed  -E -f  sedfunc.sh sed.txt|nl
grep -Eo '\b[0-9]{1,}\b' sed.txt|wc -l

sed '/^\s$/d' sed.txt|sed -E 's/\b[0-9]{1,}\b/x/g'|sed '/cf/a\rjb'
