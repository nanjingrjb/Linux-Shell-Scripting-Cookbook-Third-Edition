#########################################################################
# File Name: arrfun.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Jul  5 06:14:17 2023
#########################################################################
#!/bin/bash
arr()
{
#	in=$(echo $*)
	#for  i in ${in[*]};
	for  i in $*;
	do
		out=(${out[*]}  $(($i**2)))
	done
	echo ${out[*]}
}

echo " your arr is:" $*
res=$(arr $*)
echo "red is :${res[*]}"
