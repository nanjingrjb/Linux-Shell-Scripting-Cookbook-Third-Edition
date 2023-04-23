#########################################################################
# File Name: sedchange.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sat Apr 22 10:45:52 2023
#########################################################################
#!/bin/bash
echo 'old:'
cat data1.txt
echo 'change 3:'
sed '3c\this is a change for line3.' data1.txt
echo 'y map 1to1'
sed 'y/Line/line/' data1.txt
echo 'replace all '
sed 's/Line/lines/' data1.txt
echo 'write data to file:'
if [ -f new.txt ];then 
	rm new.txt
fi

sed '1,2w new.txt' data1.txt
echo "new file content:"
cat new.txt
echo "read fact.sh and insert 3line of new.txt"
sed -i '1r fact.sh' new.txt
echo "I will add a end in new.txt"
sed -i '$a\this is a end i add.' new.txt
cat new.txt
