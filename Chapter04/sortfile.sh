#########################################################################
# File Name: sortfile.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sat Apr 15 13:42:38 2023
#########################################################################
#!/bin/bash

du --help |head -n 20
#查找/usr/share/下的最大占用空间的文件
echo "寻找在/usr/share下的文件大小，并按照从大到小的顺序排列，列出最前面的10个文件信息"
echo "-n 数字排列 -r反序（从大到小）,head 缺省为前10个"

du -s /usr/share/* | sort -nr |head

echo "列出文件列表并按照大小排序，需要使用sort的字段来排序，-k选项，并按照人的思维，从1计数"
ls -l /usr/bin |sort -nrk 5|head

echo '指定分割符-t:，指定排序字段'
sort -t ':' -k 7 /etc/passwd |head
