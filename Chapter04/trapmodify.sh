#########################################################################
# File Name: trapmodify.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Jun 14 18:17:18 2023
#########################################################################
#!/bin/bash
#!/bin/bash
#Modifying a set trap
#
trap "echo ' Sorry...Ctrl-C is trapped.'" SIGINT
#
count=1
while [ $count -le 10 ]
do
     echo "Loop #$count"
     sleep 1
     count=$[ $count + 1 ]
done
#
trap "echo ' I have modified the trap!'" SIGINT
#
count=1
while [ $count -le 3 ]
do
     echo "Second Loop #$count"
     sleep 1
     count=$[ $count + 1 ]
done
#
exit

