#########################################################################
# File Name: myretarr.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue May 30 18:09:31 2023
#########################################################################
#!/bin/bash
retarr()
{
	local ori=$(echo $@)
	for i in ${ori[*]};do
		val=(${val[*]} $((i*2)))
	done
	echo ${val[*]}
}

arr=(1 2 3 4 5)
echo "orig val is:"${arr[*]}
ret=$(retarr ${arr[*]})

echo "rer val is:"${ret[*]}
