#########################################################################
# File Name: readconfig.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Apr 24 00:25:34 2023
#########################################################################
#!/bin/bash
config=ls.txt
desname=mysh.tar.gz
exec 0< $config
read filename
#echo $filename
while [ $? -eq 0 ]
do
	filelst="$filelst $filename"
	read filename
done

#echo $filelst
tar -czf $desname $filelst
