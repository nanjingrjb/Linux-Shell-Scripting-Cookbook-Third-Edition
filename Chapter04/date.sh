#########################################################################
# File Name: date.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu May 11 08:06:54 2023
#########################################################################
#!/bin/bash
#!/bin/bash
        #Filename: time_take.sh
		set -x
        start=$(date +%s)
		set +x
		#for i in `seq 10 `;
		for i in $(seq 100000) ;
		do 
		sum=$[sum+$i]
		done
		echo $sum
set -x       
        end=$(date +%s)
        difference=$(( end - start))
      set +x
		echo Time taken to execute commands is $difference seconds.

