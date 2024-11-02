#!/bin/bash

# ***************************************************************************
# * 
# * @file:float_cal.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-10-31 13:52 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



a=$1
b=$2

echo "now cal a*b from input"

echo "$(bc<<EOF
scale=4
$a*$b
EOF
)
"

echo "在bc内部可以不用\$来表示变量，如"
echo "res=$(bc <<EOF
scale=4
a=2.3
b=4
a*b
EOF
)
"

echo "但是对于实际需求来说，一般从外部定义变量，所以需要在内部使用即可"

echo "$(bc<<EOF
scale=4
$a*$b
EOF
)
"
