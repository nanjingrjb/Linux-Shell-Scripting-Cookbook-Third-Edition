#########################################################################
# File Name: sedmuline.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Wed Jun 28 18:28:59 2023
#########################################################################
#!/bin/bash
sed -n '/1/{N;/7/p}' awkmuline.txt
