#########################################################################
# File Name: caldirdf.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Sat Jul 29 21:27:09 2023
#########################################################################
#!/bin/bash
caldirdf()
{
	dir=-./
	for i in "$@"
	do 
		if [[ -d $i ]]
		then bash ./sumint.sh $(ls -l $i|gawk '{print $5}')
		fi
	done
}
caldirdf "$@"
