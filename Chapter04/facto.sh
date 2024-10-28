#!/bin/bash

# ***************************************************************************
# * 
# * @file:facto.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-10-28 08:04 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



# Using one command-line parameter
#
factorial=1
for (( number = 1; number <= $1; number++ ))
do
     factorial=$[ $factorial * $number ]
done
echo The factorial of $1 is $factorial
exit


