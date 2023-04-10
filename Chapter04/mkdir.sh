#/bin/bash

#创建100个文件夹，并创建26个文件

mkdir ./testfind
cd testfind
mkdir dir_{0..100}
touch dir_{0..100}/file_{a..z}

#寻找统计file*的个数
find ./testfind -name file_a |wc
