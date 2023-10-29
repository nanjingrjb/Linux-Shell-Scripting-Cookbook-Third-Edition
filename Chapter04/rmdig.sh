#!/bin/bash

# ***************************************************************************
# * 
# * @file:rmdig.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-26 18:41 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/
#

while read miss
do
	sed -i "/$miss/d" digit.txt
done< "rm.txt"
