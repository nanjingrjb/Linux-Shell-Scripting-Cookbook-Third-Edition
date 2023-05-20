#########################################################################
# File Name: sort_mul_key.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sat May 20 07:49:32 2023
#########################################################################
#!/bin/bash
echo "单一按字母排序"
cat version.txt|sort -k 1

echo "多个key排序，指定第二个按n(数值)排序"
sort --key=1,1 --key=2n version.txt

echo "降序排列，指定第三个字段，设置偏移量，日期排序"
sort -k 3.7nbr -k 3.1nbr -k 3.4nbr version.txt

echo "升序排列，指定第三个字段，设置偏移量，日期排序"
sort -k 3.7nb -k 3.1nb -k 3.4nb version.txt
