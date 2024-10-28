#!/bin/bash

# ***************************************************************************
# * 
# * @file:funvar.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-03-23 08:08 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



flist=("ls" "echo")
var=("." "mymsg")

len=${#flist}
for i in {0..1}
do
	${flist[$i]} ${var[$i]}

done

