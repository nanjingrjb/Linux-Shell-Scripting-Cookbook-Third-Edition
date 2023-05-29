#########################################################################
# File Name: funmul2.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon May 29 18:16:20 2023
#########################################################################
#!/bin/bash
mul()
{
	echo $(($1*$2))
}

num=$#
if((num<=0||num>2));then
	echo "error"
	ret=-1
else if ((num=1));then

ret=$(mul $1 $1)
else

ret=$(mul $1 $2)
fi
fi
echo $ret
