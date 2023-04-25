#########################################################################
# File Name: seq.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue Apr 25 23:48:59 2023
#########################################################################
#!/bin/bash
cd /mnt/d
ls -lt file* |head -n 100|gawk '{print $9}'|xargs rm -fr
echo "after delete:"
ls -lt 
if [ -d tmp ];then
	rm -r tmp
	mkdir tmp
else
	mkdir tmp
fi
cd tmp

#ls -lt file*|head -n 100|gawk '{print $9}'|xargs rm 
for i in `seq 1 100`;
do touch file_$i
done
