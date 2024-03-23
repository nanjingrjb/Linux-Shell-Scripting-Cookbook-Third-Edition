#!/bin/bash

# ***************************************************************************
# * 
# * @file:check_phone.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-29 12:53 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



gawk --re-interval '/^\(?[2-9][0-9]{2}\)?(| |-|\.)[0-9]{3}( |-|\.)[0-9]{4}/{print $0}'


