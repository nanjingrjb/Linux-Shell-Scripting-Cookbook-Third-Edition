#!/bin/bash
for i in `ls`;
 	#do tmp=`date +%Y-%m-%d-%H-%M-%s`;
	#采用grep进行正则表达式的匹配
	#do echo grep "2023-03-14*" $i
	#do new=${i//_2023-03-14-21-49-1678801791/_hello};
	#mv $i $new; 
	do new=${i//_2023-03-14-21-49-1678801791/_hello};
	mv $i $new; 
done

