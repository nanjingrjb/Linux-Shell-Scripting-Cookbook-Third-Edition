#########################################################################
# File Name: sed_op.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Jul  5 07:41:13 2023
#########################################################################
#!/bin/bash
opp=('g'  '1'  'L1' 'second' 'p')
echo "原始数据:"
cat data4.txt
valid=1
for i in ${opp[*]}
do
	case $i in
		g)echo "全局替换test:"
			res=$(sed 's/test/trial/g' data4.txt
			);;
	    1)echo "每行第一个替换:" 
				res=$(sed 's/test/trial/' data4.txt);;
		L1)echo "第一行全替换:" 
			res=$(sed '1s/test/trial/g' data4.txt);;
		second)echo "根据指定的字符串寻找替换:" 
			res=$(sed '/second/s/test/trial/' data4.txt);;
			
		*)echo "无效选项。"
			valid=0;; 
esac
if [ ! $valid = 0  ]
then
		echo $res
fi
done
	

echo -e "this is\nThis is\n"|sed 's/[Tt]his is/there are/g'

echo '采用正则表达式推导，替换:'
echo -e "this is\nThis is\nThis is\n"|sed -e '/[Tt]his/s/[Tt]his is/There are/g'
