#########################################################################
# File Name: sed_grep_diff.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri Apr 21 14:22:36 2023
#########################################################################
#!/bin/bash
str='123 345 122\n
     12 23 45\n
	 90 891 34\n'
echo "using sed :"
echo -e $str|sed -n '/\<[0-9][0-9]\>/p'

echo "using grep:"
echo -e $str|grep --color '\<[0-9][0-9]\>'
