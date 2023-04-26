#########################################################################
# File Name: array.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed Apr 26 07:50:37 2023
#########################################################################
#!/bin/bash
a=($(seq 10))
b=(`seq 10`)
sizea=${#a[*]}
sizeb=${#b[*]}
if [ $sizea -eq $sizeb ];
	then echo $sizea;
	#echo ${a[1]}
	#echo ${b[1]}
	for i in `seq $sizea`;
#	for i in $[1..$sizea];
		do
		echo $i
		t=$[$i-1]
		#echo $t
		#m =  ${a[$t]} 	
		#n =  ${b[$t]}
		echo ${a[$t]} ${b[$t]}
		if [ ${a[$t]} -eq  ${b[$t]} ];then
			echo 'ok'
		else
			#goto ERROR;
			echo "not same"
			exit 0
		fi
		done
		
	echo "same."
	exit 0
else
	#goto ERROR;
	echo "not same"
	exit 0
fi

XT:
	echo "same."
	exit 0
ERROR:
	echo "not same"
	exit 0
