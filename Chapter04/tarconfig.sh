#########################################################################
# File Name: tarconfig.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Aug  9 07:39:43 2023
#########################################################################
#!/bin/bash
month=$(date '+%m')
day=$(date '+%d')

des=tarfile
#生成一个归档列表

exec < config.txt
read file
while [ $? -eq 0 ]
do
	if [[ -d $file || -f $file ]]
	then echo "add $file to tarlist"
		list+=( "$file" ) 
	else
		echo "$file no found."
	fi
	read file
done
echo ${list[@]}
mkdir -p ./$des/$month/$day
tar -zcf ./$des/$month/$day/mytar.tar  ${list[*]}
