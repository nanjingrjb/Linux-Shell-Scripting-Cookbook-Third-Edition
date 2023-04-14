#########################################################################
# File Name: grepMakeDir.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri Apr 14 10:41:07 2023
#########################################################################
#!/bin/bash
if [ ! -e ./testgrep ];then
	mkdir ./testgrep
else
	rm -fr ./testgrep
	mkdir ./testgrep
fi

ls /usr/bin >./testgrep/dirlist_usr_bin.txt
ls /bin     >./testgrep/dirlist_bin.txt
ls /sbin     >./testgrep/dirlist_sbin.txt
ls /usr/sbin     >./testgrep/dirlist_usr_sbin.txt

cd ./testgrep
echo "file txt create success!"
