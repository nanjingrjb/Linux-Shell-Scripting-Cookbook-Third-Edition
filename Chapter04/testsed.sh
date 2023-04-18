#########################################################################
# File Name: testsed.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue Apr 18 10:54:05 2023
#########################################################################
#!/bin/bash
echo "This is a test."|sed 's/test/big test/'

#替换某个文件中的某些字段
sed  's/python/c++/' ./newplace*.txt

#采用扩展正则表达式来替换sed.txt的数字
cat sed.txt
echo "开始替换里面的数字"
sed -E 's/[0-9]+/digit' sed.txt
