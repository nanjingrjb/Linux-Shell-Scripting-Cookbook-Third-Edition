#########################################################################
# File Name: printf.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Sat Aug  5 20:25:43 2023
#########################################################################
#!/bin/bash

stdout()
{
	one="$1"
	printf "This is some msg from %s .\n" "$one"
}

stdout "$@"
