#!/bin/bash
#测试字符a和b是否相等。
test a == b;
echo judge res is:$?

echo "using [] judge"
[ a == b ] && echo equal || echo not equal
if  [ a == b ];
then echo equal
else
	echo no equal
fi
