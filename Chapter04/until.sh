#########################################################################
# File Name: util.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue Apr 25 07:22:39 2023
#########################################################################
#!/bin/bash
var=100
until [ $var -eq 0 ]
do 
	echo $var
	var=$[$var - 25]
done

i=1
res=1
until  [ $i -eq 6 ]
do 
	res=$[$res*$i]
	i=$[$i+1]
done
echo $res

