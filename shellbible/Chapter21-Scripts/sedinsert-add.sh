#########################################################################
# File Name: sedinsert-add.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri Apr 21 18:12:34 2023
#########################################################################
#!/bin/bash
echo "are you ok?"|sed 'a\iamok\'
echo "are you ok?"|sed 'i\iamok\'
des=`pwd`
dirname="sedtest"
if [ ! -d $dirname ];then
	mkdir $dirname
	echo "create dir:$dirname"
else
	echo "start rm dir $dirname."
	rm -fr $dirname
fi

dirnow=/sdcard/111py/Linux-Shell-Scripting-Cookbook-Third-Edition/shellbible/Chapter21-Scripts
echo "$dirnow"


echo "whoami res is:`whoami`"
