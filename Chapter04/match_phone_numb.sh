#!/bin/bash

# ***************************************************************************
# * 
# * @file:match_phone_numb.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-28 14:56 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



while read phone
do
	if [[ "$phone" =~ ^\(?[1-9][0-9][0-9]\)?(| |-|\.)[0-9][0-9][0-9]( |-|\.)[0-9][0-9][0-9][0-9] ]];
	then
		echo "$phone,match phone"
	else
		echo "$phone,no match"
	fi
done < phone.txt

