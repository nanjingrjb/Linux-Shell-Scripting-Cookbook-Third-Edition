#########################################################################
# File Name: sedrpt.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Aug  8 18:22:21 2023
#########################################################################
#!/bin/bash

maxspace()
{
	mydate=$(date "+%Y%m%d")
	file=info_${mydate}
#	dir='/var/log /root'
    dir=$1
    configfile=config.txt
	exec > $file
	exec <$configfile
	read i
	while [ $? -eq 0 ]
	do
		echo ""
		echo "the $i directory:"
	[[ -d "$i" ]]&&du -S "$i"|
		sort -rn|
		head -n 10|
		sed '='|
		sed 'N;s/\n/ /'|
		gawk '{printf $1"\t"$2"\t"$3"\n"}'||echo "$i dir not found.\n"
    read i
	done
}

maxspace "$@"
