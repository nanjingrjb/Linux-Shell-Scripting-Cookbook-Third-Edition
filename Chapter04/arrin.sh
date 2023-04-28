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
	arr=(`echo $@`)
#	echo "inside arr is ${arr[*]}"
#	for i in ${arr[*]};
#	do
#		m=$[$i*2]
#	  p[$cnt]=$m
#	  cnt=$[cnt+1]
#	done

#	m= ${#arr[@]}
	#echo "len is" ${#arr[@]}
	
	for ((i=0;i<$#;i++ ))
	{
		p[$i]=$[${arr[$i]}*2]
	}

	echo ${p[*]}
}

a=(1 2 3 4 5)
#echo "len arr is :${#a[@]}"
b=($(doublearr ${a[*]}))

echo "array b is:"${b[*]}
