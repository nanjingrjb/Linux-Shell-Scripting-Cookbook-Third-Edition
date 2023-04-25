#########################################################################
# File Name: strexp.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun Apr 23 19:51:04 2023
#########################################################################
#!/bin/bash
a=foo
b=${a}_file
echo $b

foo=
echo ${foo:=-"default value if unset"}
echo $foo

foo=bar
echo ${foo:=-"default value if unset"}
echo $foo
