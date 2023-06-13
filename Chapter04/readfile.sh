#########################################################################
# File Name: readfile.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Jun 14 05:52:00 2023
#########################################################################
#!/bin/bash
#
fileread()
{
	local count=1
	local name=$1
	cat $name|while read line;
do
	echo "#$count:$line"
	count=$((count+1))
done

}
fileread $@

