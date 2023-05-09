#########################################################################
# File Name: case.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed May 10 07:49:20 2023
#########################################################################
#!/bin/bash

read -p "input your choice" ch
case $ch in
	1) echo 1;;
	2)echo 2;;
	3|4)echo 3 or 4;;
	*)echo other;;
esac
