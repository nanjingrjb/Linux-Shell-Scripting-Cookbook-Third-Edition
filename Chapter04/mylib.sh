#########################################################################
# File Name: substrfind.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Jun  5 08:02:19 2023
#########################################################################
#!/bin/bash
issub()
{
	local src=$1
	local sub=$2

	local res=0
	res=$(echo $src|grep $sub)
	if [ ! -z $res ];then
#	if (echo $src|grep $sub);then
		echo 1
	else
		echo 0
	fi

}

addpath()
{
	#更新$PATH
	ret=$(issub $PATH $(pwd))
  
	if [ !  $ret -eq 0 ];then
		echo "exist dir  $(pwd) in \$PATH. "
	else
		echo "add $(pwd) to \$PATH."
		echo export PATH=\"$(pwd):'$PATH'\" >> /etc/profile
	fi
}

mybc()
{

if [ "$1" = "-p" ] ; then
  precision=$2
  shift 2
else
  precision=2  # default
fi
bc -q << EOF
scale=$precision
$*
quit
EOF
}


