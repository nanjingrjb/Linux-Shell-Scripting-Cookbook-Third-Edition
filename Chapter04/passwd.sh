#########################################################################
# File Name: passwd.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue Apr 25 23:08:09 2023
#########################################################################
#!/bin/bash
echo "采用for循环，通过改变IFS的分割符来进行解析"
IFS.OLD=$IFS
IFS=$'\n'

for i in `cat /etc/passwd`;
do
	IFS=$':'
	for val in $i;do
		echo $val
	done
done

echo "通过gawk来解析"
gawk -F: '{print $1, $2, $3, $4, $5, $6, $7, $8}' /etc/passwd


