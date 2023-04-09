#!/bin/bash

# testing multiple commands in the then block
#
testuser=test
#
#if grep $testuser /etc/passwd
if [ `grep $testuser /etc/passwd` ]
then
     echo "This is my first command in the then block."
     echo "This is my second command in the then block."
     echo "I can even put in other commands besides echo:"
     echo "列出用户$testuser主目录下的bash文件如下:"
     ls -al /home/$testuser| grep "\.bash*"
fi
echo "We are outside the if statement"

