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
