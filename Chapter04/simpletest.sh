#########################################################################
# File Name: simpletest.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Jul  4 07:43:14 2023
#########################################################################
#!/bin/bash
a="13"
b="123"
c="13"
if [ $a == $b ]
    then  echo ok
else
    echo no
fi

if [ ! $a == $c ]
    then echo no
else
	echo ok
fi
 [ $a == $b ]&& echo ok || echo no.


 [ ! $a == $c ]&& echo no || echo ok.
