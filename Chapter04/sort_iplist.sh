#!/bin/bash

# ***************************************************************************
# * 
# * @file:sort_iplist.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-29 17:19 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


echo "origin iplist is:"
cat iplist

echo "sort from digit low to high:"
sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n iplist

echo "sort from digit high to low:"
sort -t . -k 1,1rn -k 2,2rn -k 3,3rn -k 4,4rn iplist

echo "sort using specifit token:"
sort -t '#' -k 2 iplist
echo "sort using specifit token,reverse:"
sort -t '#' -k 2r iplist
