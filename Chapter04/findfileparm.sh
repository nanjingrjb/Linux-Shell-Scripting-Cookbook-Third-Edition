#########################################################################
# File Name: findfileparm.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Thu Aug  3 07:45:00 2023
#########################################################################
#!/bin/bash
findfile()
{
	reg=$1
	size=$2
	echo "\$1=$1"
find ./  -type f -name "$1" -size -$2

}

findfile "$@"
