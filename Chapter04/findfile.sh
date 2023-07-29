#########################################################################
# File Name: findfile.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Sat Jul 29 08:36:16 2023
#########################################################################
#!/bin/bash
#
wcfile()
{
	if [ -z $1 ]
	then
        echo "usage:$0 path type key,type&&key no -link."
		exit
		dir=./
	else
	    dir=$1
	fi

	if [ -z $2 ]
	then
		type="f"
	else
	    type="$2"
	fi
	
	if [ -z $3 ] 
	then
		key="-name file*"
	else
	    key="$3"
	fi

	find $dir  -type $type -name "*${key}*" 

}
wcfile $*

