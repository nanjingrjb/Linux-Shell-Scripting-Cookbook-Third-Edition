#########################################################################
# File Name: formatout.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Fri Jun 16 08:06:13 2023
#########################################################################
#!/bin/bash
printfout()
{
	str="this"
  printf "%s is a test for math.\n" $str

  echo $*
  printf "%d+%d=%d\n" $1 $2 $(($1+$2))
}

printfout $*	
