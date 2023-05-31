#########################################################################
# File Name: fundigui.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue May 30 18:23:02 2023
#########################################################################
#!/bin/bash
forbi()
{
	local mul=0
	local now=$1
	if [ $now -eq 1 ];
	then echo 1
	else
		mul=$((now * $(forbi $((now-1)))))
		echo $mul
	fi

}

forbi1()
{
	local mul=0
	local now=$1
	local tmp
	if [ $now -eq 1 ];
	then echo 1
	else
		tmp=$((now-1))
		mul=$[ $now * $(forbi1 $tmp)]
		echo $mul
	fi
}

