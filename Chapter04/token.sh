#########################################################################
# File Name: token.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue Apr 25 08:10:58 2023
#########################################################################
#!/bin/bash
var=/mnt/var/pp/

echo "使用tr转换"
echo $var|tr '/' ' '
echo "使用sed替换"
echo $var|sed 's,/, ,g'
echo "使用gawk解析"
echo $var|gawk -F / '{print $1;print $2;print $3;print $4}'
echo $var|gawk -F / '{print $1,$2,$3,$4}'
