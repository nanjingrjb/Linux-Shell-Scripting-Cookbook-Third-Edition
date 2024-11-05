#!/bin/bash

# ***************************************************************************
# * 
# * @file:score_input.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-01 09:23 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


if [ ! $# -eq 1 ]
then
	echo "usage: $0 float_score"
	exit
else

score="$1"
echo "your score is $score."
if [ $score -gt 100 -o $score -lt 0 ]
then
	echo "invalide score."
	exit
fi

if [ $score -ge 90 ]
then
	res='Y'
elif [ $score -ge 80 ]
then
	res='G'
elif [ $score -ge 60 ]
then
	res='P'
else
	res='B'
fi

echo "your score level is $res."
fi

