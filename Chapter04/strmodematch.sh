#########################################################################
# File Name: strmodematch.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed May 31 21:43:51 2023
#########################################################################
#!/bin/bash
#验证字符串模式匹配
#
var=testcase
echo $var
echo "%str,右侧删除某个字符e，\${var%e}"${var%e}
echo "%str,右侧删除某个匹配字符s*e，\${var%s*e}"${var%s*e}
echo "%str,右侧删除某个最长匹配字符s*e，\${var%%s*e}"${var%%s*e}

echo "#str,左侧删除某个字符t，\${var#*t}"${var#t}
echo "#str,左侧删除某个匹配字符*e，\${var#*e}"${var#*e}
echo "#str,左侧删除某个最短匹配字符?e，\${var#?e}"${var#?e}
echo "#str,左侧删除某个最长匹配字符*e，\${var##*e}"${var##*e}

echo "取字符串的第一个字符后 右边的数据用\${var#?}"${var#?}
echo "取字符串的第一个字符用完整字符去掉刚才右边字符，用\${var%\${var#?}}"${var%${var#?}}
