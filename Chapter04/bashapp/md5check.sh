#########################################################################
# File Name: md5check.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Mon Jul 10 18:43:10 2023
#########################################################################
#!/bin/bash
#根据输入文件生成对应的md5校验文件
md5sum $1 >"md5_$1"
md5sum -c md5_$1
