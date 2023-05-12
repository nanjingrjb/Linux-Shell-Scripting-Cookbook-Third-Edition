#########################################################################
# File Name: func.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri May 12 07:55:17 2023
#########################################################################
#!/bin/bash

        fname() 
        { 
           echo $1, $2; #Accessing arg1 and arg2 
           echo "$@"; # Printing all arguments as list at once 
           echo "$*"; # Similar to $@, but arguments taken as single  
           return 0; # Return value 
         }
#		 fname 12 36 56 lkh
state()
{
     for i in `seq 1 $#`
     do
     echo $i is $1
     shift
     done
}
state "$@"
fname "$@"

