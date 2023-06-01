#########################################################################
# File Name: getopts.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu Jun  1 20:43:17 2023
#########################################################################
#!/bin/bash
#
funopt()
{
echo "$OPTIND"
while getopts "d:f:h:i:j:n" opt
do
	case $opt in
		f) echo "$OPTARG";;
		d) echo "$OPTARG";;
		*) echo "$OPTARG";;
	esac
done
shift $(($OPTIND-1))
echo $1
}

doshift()
{ 
	until [ -z "$1" ];
	do
		echo $@
		shift 1
	done
}

funopt $@ 
doshift $@
