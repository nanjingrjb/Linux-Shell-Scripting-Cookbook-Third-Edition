#########################################################################
# File Name: cutdelic.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun May 28 15:16:08 2023
#########################################################################
#!/bin/bash

parsef()
{
	src=$1

}
for i in $(seq 1 4);do

	arr=(${arr[*]} $(echo "123.456.78996.45"|cut -d. -f"$i"))
done

echo ${arr[*]}


	arr=$(echo "123.456.78996.45"|sed 's/\./ /g')
	echo $arr
	
	arr=$(echo "123.456.78996.45"|tr '.' ' ')
	echo $arr
