#########################################################################
# File Name: str#%.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed May 17 11:53:05 2023
#########################################################################
#!/bin/bash
str=/gh/book/my
right=${str#*book/}
if [ $right == my ];
then echo my
fi

left=${str%/book*}
if [ $left == '/gh' ];
then echo   '/gh'
fi

