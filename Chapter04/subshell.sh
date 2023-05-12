#########################################################################
# File Name: subshell.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri May 12 08:11:27 2023
#########################################################################
#!/bin/bash
echo "subshell mode"
cmd_output=$(ls | cat -n)
        echo $cmd_output
		echo "tickback"
		cmd_output=`ls | cat -n`

		        echo $cmd_output


