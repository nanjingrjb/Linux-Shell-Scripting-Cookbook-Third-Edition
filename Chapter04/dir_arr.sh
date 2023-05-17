#########################################################################
# File Name: dir_arr.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed May 17 22:40:01 2023
#########################################################################
#!/bin/bash
str=$(pwd)
#($(cmd))可以得到数组信息
dirarr=($(echo $str|sed 's/\// /g'))
echo ${#dirarr[*]}
echo ${dirarr[*]}

