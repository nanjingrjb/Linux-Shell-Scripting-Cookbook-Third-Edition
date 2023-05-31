#########################################################################
# File Name: funlib.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed May 31 07:52:34 2023
#########################################################################
#!/bin/bash
add()
{
	local sum
	parm=$(echo "$@")
	for i in $parm;do
		sum=$((sum+i))
	done
	echo $sum
}
