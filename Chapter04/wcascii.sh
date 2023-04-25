#########################################################################
# File Name: wcascii.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue Apr 25 21:20:20 2023
#########################################################################
#!/bin/bash
echo "使用gawk和xargs来判断当前的ascii文件的个数"
ls -l |gawk '{print $9}' res.txt | xargs file {}| grep ASCII | wc -l

echo "直接使用file和gawk来判断当前的ascii文件的个数"

ls -l |file `gawk '{print $9}'` | grep ASCII | wc -l
