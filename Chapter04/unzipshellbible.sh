#########################################################################
# File Name: unzipshellbible.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Apr 17 18:10:40 2023
#########################################################################
#!/bin/bash
cd /sdcard/111py/shellbible
if ls  *.zip ;then

for i in `ls *.zip`;
do unzip $i
done
else
	echo "no zip file."""
fi
