#########################################################################
# File Name: myarr.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Jul  4 22:54:08 2023
#########################################################################
#!/bin/bash
a=($(seq 1 6))
b=($(seq 1 6))
c=(${a[*]}  ${b[*]})
for i in ${b[*]};
do c=(${c[*]} $((i**3)))
done

echo ${c[*]}


