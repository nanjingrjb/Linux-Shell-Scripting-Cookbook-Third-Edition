#########################################################################
# File Name: arrlst.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed Aug  9 13:24:07 2023
#########################################################################
#!/bin/bash
for i in $(seq 1 5)
do
	lst+=("$i")
done
echo "${lst[@]}"

for i in $(seq 1 5)
do
	lst1="$lst1 $i"
done
echo "new method is:${lst1[@]}"
