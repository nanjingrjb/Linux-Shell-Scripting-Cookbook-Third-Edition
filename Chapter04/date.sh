#########################################################################
# File Name: date.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu May 11 08:06:54 2023
#########################################################################
#!/bin/bash
#!/bin/bash
        #Filename: time_take.sh
        start=$(date +%s)
		#for i in `seq 10 `;
		for i in $(seq 10000) ;
		do echo $i 
		sum=$[sum+$i]
		done
		echo $sum
        
        end=$(date +%s)
        difference=$(( end - start))
        echo Time taken to execute commands is $difference seconds.

