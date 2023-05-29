#########################################################################
# File Name: funzone.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue May 30 07:40:24 2023
#########################################################################
#!/bin/bash
#!/bin/bash
# using a global variable to pass a value

function dbl {
   value=$[ $value * 2 ]
}

read -p "Enter a value: " value
dbl
echo "The new value is: $value"

