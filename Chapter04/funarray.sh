#########################################################################
# File Name: funarray.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue May 30 07:50:50 2023
#########################################################################
#!/bin/bash

# array variable to function test

sum()
{
	ret=0
   local newarray
   newarray=(`echo "$@"`)
   #echo "${newarray[*]}"
	for i in ${newarray[*]};do
		ret=$((ret+i))
	done
	echo $ret
}
function testit {
   local newarray
   newarray=(`echo "$@"`)
   ret=$(sum ${newarray[*]})
   echo "The new array value is: ${newarray[*]}"
   echo "sum is :$ret"
}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
testit ${myarray[*]}

