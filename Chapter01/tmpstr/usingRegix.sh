#!/bin/bash

for i in `ls`
do re="_hello"
	[[ $i =~ $re ]]  && rep=${BASH_REMATCH[@]}
	echo $rep
done
