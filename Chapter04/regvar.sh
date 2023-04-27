#########################################################################
# File Name: regvar.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu Apr 27 09:18:45 2023
#########################################################################
#!/bin/bash
function regmatch()
{
	if [[ $1 =~ $2 ]];then
		echo "match"
	else
		echo "not match"
	fi
}

lst=("^/mnt" "^/mntp" "var$")
#echo ${#lst[@]}
for i in ${lst[*]};
do
#	echo $i
	regmatch "/mnt/you/var" $i
done
