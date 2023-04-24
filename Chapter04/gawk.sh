#########################################################################
# File Name: gawk.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue Apr 18 11:49:26 2023
#########################################################################
#!/bin/bash

#gawk '{print "hello world!"}'

echo "显示sed.txt中的各个字符量"
for i in {1..10};do
	echo $i
	gawk  '{print ($$i)}'   sed.txt
done
