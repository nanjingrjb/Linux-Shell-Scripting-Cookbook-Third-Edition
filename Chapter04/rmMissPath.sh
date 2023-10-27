#!/bin/bash

# ***************************************************************************
# * 
# * @file:rmMissPath.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-26 14:50 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


str=$(date +"%Y-%m-%d-%H-%M-%S")
cp dir.txt dir_back_"$str".txt


myfile=dir.txt
while read miss
do
cat $myfile|grep -v $miss >new_dir.txt
myfile=new_dir.txt
done <misspath.txt




