#/bin/bash
#找出手机中的所有pdf文件，并集中存放
if [ ! -d /sdcard/001pdf ];
	then mkdir /sdcard/001pdf
fi

find /sdcard -type f -iname "*.pdf" |xargs -n1 -I {} mv {} /sdcard/001pdf 

