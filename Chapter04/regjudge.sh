#########################################################################
# File Name: regjudge.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu Apr 27 08:45:33 2023
#########################################################################
#!/bin/bash
read -p "input a digit:" dig
exec 2>err.txt
if [[ "$dig" =~ ^-?[0-9]+$ ]];then
	if [ $dig -eq 0 ];then
		echo "dig is zero."
	else if [ $dig -lt 0 ];then
		echo "dig is neg."
	else if [ $[$dig%2]  -eq 0 ];then
		echo "dig is even."
	else 
		echo "dig is pek."
	fi
	fi
	fi
else
	echo "input a valid num." 
fi
