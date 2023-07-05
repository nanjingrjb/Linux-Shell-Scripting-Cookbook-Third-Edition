#########################################################################
# File Name: sed_op.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Jul  5 07:41:13 2023
#########################################################################
#!/bin/bash
opp=('g'  '1'  'L1')
echo "原始数据:"
cat data4.txt
for i in ${opp[*]}
do
	case $i in
		"g")echo "全局替换test:"
			res=$(sed 's/test/trial/g' data4.txt
			);;
	    "1")echo "每行第一个替换:" 
				res=$(sed 's/test/trial/' data4.txt);;
		"L1")echo "第一行全替换:" 
			res=$(sed '1s/test/trial/g' data4.txt);;
esac
		echo $res
done
	

