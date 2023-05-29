#########################################################################
# File Name: guess.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon May 29 18:43:04 2023
#########################################################################
#!/bin/bash
echo "let's guess num between 0 and 100."
des=$(($RANDOM%100))
echo "des=$des,please guess it."
cnt=0
read in
while [ ! $in = $des ];do
	if((in > $des));then
		echo "too big,input litter one:"
		cnt=$((cnt+1))
		read in
	else if((in==$des));then
		echo "you are right."
		cnt=$((cnt+1))
		exit 0
	else

		cnt=$((cnt+1))
		echo "too little,input bigger one:"
		read in
	fi
	fi
done

		echo "you are right."
		echo "right val is:$des."
		echo "you'v tried $cnt times."							
