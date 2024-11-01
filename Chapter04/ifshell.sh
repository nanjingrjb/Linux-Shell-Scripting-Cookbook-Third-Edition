#!/bin/bash

# ***************************************************************************
# * 
# * @file:ifshell.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-10-29 05:47 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



if (echo '123dff'|grep -E '[0-9]{3}')
then
	echo "find 3 digit"
else
	echo "no find "
fi

