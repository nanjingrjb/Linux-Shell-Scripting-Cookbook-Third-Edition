#########################################################################
# File Name: calzk.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Jul  4 06:54:43 2023
#########################################################################
#!/bin/bash
pi=3.14
f=50
l=$1
c=$2

zk=$(bc << EOF
scale=4
2*$pi*$l
EOF
)
rk=$(bc << EOF
scale=4
1/(2*$pi*$c)
EOF
)
echo "zk is : " $zk
echo "rk is : " $rk
