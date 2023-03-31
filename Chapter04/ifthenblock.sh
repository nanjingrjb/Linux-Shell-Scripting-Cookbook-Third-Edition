#!/bin/bash

# testing multiple commands in the then block
#
testuser=test1
#
#if grep $testuser /etc/passwd
if [ `grep $testuser /etc/passwd` ]
then
     echo "This is my first command in the then block."
     echo "This is my second command in the then block."
     echo "I can even put in other commands besides echo:"
fi
echo "We are outside the if statement"

