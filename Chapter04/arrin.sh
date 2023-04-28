#########################################################################
# File Name: arrin.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri Apr 28 08:32:51 2023
#########################################################################
#!/bin/bash
doublearr()
{
    cnt=0
	arr=$@
	for i in ${arr[*]};
	do
		m=$[$i*2]
	  p[$cnt]=$m
	  cnt=$[cnt+1]
	done
	echo ${p[*]}
}

a=(1 2 3 4 5)
b=($(doublearr ${a[*]}))

echo "array b is:"${b[*]}
