#########################################################################
# File Name: zhuanyi.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri Apr 21 11:10:01 2023
#########################################################################
#!/bin/bash
echo "this is a zhuanyi test for \."
echo "using \",need more \\."
echo "\ is a special character."|sed -n '/\\/p'
echo "\ is a special character."|sed -n "/\\\/p"
echo "3/2"|sed '/\//p'
