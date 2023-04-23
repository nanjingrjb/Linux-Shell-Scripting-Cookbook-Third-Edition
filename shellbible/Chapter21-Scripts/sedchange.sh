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
sed '1,2w new.txt' data1.txt
echo "new file content:"
cat new.txt
