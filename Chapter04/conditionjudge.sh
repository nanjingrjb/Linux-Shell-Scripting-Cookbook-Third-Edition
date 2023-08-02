#########################################################################
# File Name: conditionjudge.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Aug  2 07:39:38 2023
#########################################################################
#!/bin/bash
findstr1()
{
	str="$1"
	fstr="$2"
	echo "$str"|grep -E "$fstr" &&echo "match" ||echo "no find $fstr in $str"

}
findstr2()
{
	[[ $1 =~ $2 ]] && echo ok ||echo not match
}
[ -f rjb ]&&rm rjb||touch rjb
findstr1 "$@"
findstr2 "$@"

[[ $1 =~ $2 ]]&&echo yes||echo no

#模式匹配时，右边不可用引号，直接输入匹配正则式子即可
#[[ "123456" =~ ^12.*6 ]]&&echo ok||echo no
