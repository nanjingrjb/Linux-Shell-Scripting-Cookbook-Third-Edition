#!/bin/bash

touch testfile1
touch testfile2
[ -e testfile1 ]&&echo testfile1 exist||echo noexist.

[ -e testfile3 ]&&echo testfile3 exist||echo testfile3  noexist.

if [ -d testfile1 ]
then echo "it's a dir"
elif  [ -f testfile1 ]
then echo "it's a file"
elif [ -c testfile1 ]
then echo "it's char"
else
	echo "other"
fi

echo using test if

if test -f testfile1
then echo file
elif test -c testfile1
then echo char
elif test -b testfile1
then echo block
else test other
fi
