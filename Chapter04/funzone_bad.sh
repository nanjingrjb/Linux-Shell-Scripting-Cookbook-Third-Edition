#########################################################################
# File Name: funzone_bad.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue May 30 07:45:21 2023
#########################################################################
#!/bin/bash
!/bin/bash
# demonstrating a bad use of variables

function func1 {
   local temp=$[ $value + 5 ]
   result=$[ $temp * 2 ]
}

temp=4
value=6

func1
echo "The result is $result"
if [ $temp -gt $value ]
then
   echo "temp is larger"
else
   echo "temp is smaller"
fi

