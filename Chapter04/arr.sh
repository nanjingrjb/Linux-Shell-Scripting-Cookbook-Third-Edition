#########################################################################
# File Name: arr.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu May 11 07:54:38 2023
#########################################################################
#!/bin/bash
arr=(1 2 3)
echo ${arr[*]}
echo ${!arr[*]}
echo ${#arr[*]}
declare -A fruits_value
fruits_value=([apple]='100 dollars' [orange]='150 dollars')
echo "Apple costs ${fruits_value[apple]}"


 declare -A ass_array
 ass_array=([index1]=val1 [index2]=val2)
echo ${ass_array[*]}


p=({0..9})
for i in ${p[*]}
do
	if [ $(($i%2)) -eq 0 ]
	then
	    echo -e "$i is even"
	else
	    echo -e "$i is odd"
	fi
done
