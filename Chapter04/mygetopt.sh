#########################################################################
# File Name: mygetopt.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon May 22 07:52:02 2023
#########################################################################
#!/bin/bash
while getopts "r:w:" opt;
do
	case $opt in
		r)	var1="$OPTARG"
			echo $var1;;
		w)	var2="$OPTARG"
			echo $var2;;
		?)	exec 2 > "/dev/null"
			echo other;;
	esac
done	

