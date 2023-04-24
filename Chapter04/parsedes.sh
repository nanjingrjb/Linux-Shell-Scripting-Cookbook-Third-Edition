#########################################################################
# File Name: parsedes.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Apr 24 20:50:09 2023
#########################################################################
#!/bin/bash
des=(`gawk '{print $2}' ls.txt`)
for s in ${des[*]}	;
do
	name=(`echo $s|tr '/' ' '` )
	if [ ${#name[*]} -gt 1 ] ;then
		echo ${name[0]}
	fi
done
