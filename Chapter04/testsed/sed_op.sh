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
	echo $i
	if [ $i == "g" ]
	then
	  echo "全局替换test."
      res=$(sed 's/test/trial/g' data4.txt)
	  else if [ $i == "1" ]
	then
		echo "只替换每行第一个匹配"
res=$(sed 's/test/trial/' data4.txt)
	  else if [ $i == "L1" ]
	then
		echo "只替换第一行第一个匹配"
res=$(sed '1s/test/trial/g' data4.txt)
	  fi
    fi
    fi
	echo $res
done
