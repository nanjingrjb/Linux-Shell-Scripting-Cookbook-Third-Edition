#########################################################################
# File Name: funtest.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun May 28 17:18:36 2023
#########################################################################
#!/bin/bash
#!/bin/bash
# using a function in a script

function func1 {
   echo "This is an example of a function"
}

count=1

while [ $count -le 5 ]
do
   func1
   arr=(${arr[*]} $count)
   count=$[ $count + 1 ]
done
echo "This is the end of the loop"
func1
echo "Now this is the end of the script"

echo "array is:" ${arr[*]}

for i in ${arr[*]};do
	darr=(${darr[*]} $((i*2)))
done
echo ${darr[*]}		
