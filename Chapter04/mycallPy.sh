#!/bin/bash

# ***************************************************************************
# * 
# * @file:mycallPy.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-05 15:52 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
if [ -e res.txt ]
then
    rm res.txt
fi


find . -maxdepth 1 -type f -name "*.txt" -print|while read file
do
	python callPy.py ${file} >>res.txt
done


