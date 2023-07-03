#########################################################################
# File Name: bc.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Jul  4 06:35:10 2023
#########################################################################
#!/bin/bash
c=$(bc << EOF
scale=5
a=12.3
b=3
a*b
EOF
)
echo $c
