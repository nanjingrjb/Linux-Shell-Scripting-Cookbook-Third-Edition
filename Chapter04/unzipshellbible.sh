#########################################################################
# File Name: unzipshellbible.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Apr 17 18:10:40 2023
#########################################################################
#!/bin/bash
cp /sdcard/Download/Cha*.zip /sdcard/111py/shellbible
cd /sdcard/111py/shellbible
if [ -d  Cha* ];then
	echo "file already unzip." 
	rm -fr Cha*
elif ls  *.zip ;then
     for i in `ls *.zip`;
     do unzip $i
	rm	 $i	
	 done
else
	echo 'no zip file'
fi
