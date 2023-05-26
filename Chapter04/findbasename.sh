#########################################################################
# File Name: findbasename.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri May 26 08:33:00 2023
#########################################################################
#!/bin/bash
dirall=$(find ~ -type f -name 'test*')
if [ -f findbase.txt ];
then rm findbase.txt
fi

touch findbase.txt

for i in $dirall;
do 
	info=$(basename $i)
	echo $info >> findbase.txt
done
echo "raw num:"
cat findbase.txt|wc -l

#打印出唯一的文件
echo "uniq num :"
cat findbase.txt|uniq|wc -l

#打印出重复的文件
echo "dup files :"
cat findbase.txt|uniq -D
echo "dup num :"
cat findbase.txt|uniq -D|wc -l
