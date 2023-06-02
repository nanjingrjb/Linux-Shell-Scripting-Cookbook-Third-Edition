#########################################################################
# File Name: guess.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon May 29 18:43:04 2023
#########################################################################
#!/bin/bash
checkint()
{
	org=$1
	left=$(echo $org|sed 's/[[:digit:]]//g')
	if [ -z $left ];then
		echo 0
	else
		echo 1
	fi
}
echo "let's guess num between 0 and 100."
#echo "des=$des,please guess it."
cnt=0
cnt_loop=1
cnt_games=5
while [ $cnt_games -gt 0 ];
do
	echo "you're start $cnt_loop games:"
des=$(($RANDOM%100))

read in


while [ ! "$in" = "$des" ];do
if  [ -z "$in" ];then
		echo input again;
        read in
fi
res=$(checkint $in)
if [ $res -eq 0 ];
then
		cnt=$((cnt+1))
	if((in > $des));then
		echo "too big,input litter one:"
		read in
	elif((in < $des));then
		echo "too little,input bigger one:"
		read in
	fi
else
	echo "invalid num,please input int."
	read in
fi
done

		echo "you are right."
		echo "right val is:$des."
		echo "you'v tried $cnt times."
		cnt_loop=$((cnt_loop+1))
		cnt_games=$((cnt_games-1))
		cnt=0
done
