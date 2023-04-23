#########################################################################
# File Name: myfile.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun Apr 23 10:16:40 2023
#########################################################################
#!/bin/bash
#先创建一个文件
if [ -f myfile.txt ]; then
	rm myfile.txt
fi

sed -n '1,2w myfile.txt' sedchange.sh
#cat myfile.txt
sed -i '$a\this is  line 3 I add.'  myfile.txt
#echo "insert line 3:"
#cat myfile.txt
#echo "read new.txt,and insert to myfile.txt:"
sed -i '$r new.txt' myfile.txt
cat myfile.txt
