#/bin/bash

#创建100个文件夹，并创建26个文件
if  [ ! -d testfind ];then
   mkdir testfind
else
   rm -fr testfind
   mkdir testfind
fi

cd testfind
mkdir dir_{0..100}
touch dir_{0..100}/file_{a..z}

pwd
#寻找统计file*的个数
find ./ -name file_[ab] |wc
