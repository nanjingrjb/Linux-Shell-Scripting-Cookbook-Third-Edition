#########################################################################
# File Name: shift.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Jun 13 17:50:11 2023
#########################################################################
#!/bin/bash
#!/bin/bash
# Shifting through the parameters
#
echo
echo "Using the shift method:"
count=1
#set -x
while [ -n "$1" ]
do
     echo "Parameter #$count = $1"
     count=$[ $count + 1 ]
     shift
done
#set +x
echo
exit

