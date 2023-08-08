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
	dir=$1
	exec > $file
	du -S "$dir"|
		sort -rn|
		head -n 10|
		sed '='|
		sed 'N;s/\n/ /'|
		gawk '{printf $1"\t"$2"\t"$3"\n"}'
	cat $file
}

maxspace "$@"
