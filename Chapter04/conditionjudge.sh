#########################################################################
# File Name: conditionjudge.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Aug  2 07:39:38 2023
#########################################################################
#!/bin/bash
findstr()
{
	str="$1"
	fstr="$2"
	echo "$str"|grep -E "$fstr" &&echo "match" ||echo "no find $fstr in $str"

}

bash conditionjudge.sh "this is your book" "[[:space:]]is"&&echo ok||echo no
