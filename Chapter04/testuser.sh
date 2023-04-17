#########################################################################
# File Name: testif.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Apr 17 17:13:09 2023
#########################################################################
#!/bin/bash
testuser=test
if grep $testuser /etc/passwd;then
	echo "the user $testuser account exists ."
elif ls -d /home/$testuser/;then
	echo "the user $testuser has  a directory."
else
	echo "no directory for user $testuser."
fi
