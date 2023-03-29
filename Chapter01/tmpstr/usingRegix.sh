#!/bin/bash

for i in `ls`
do re="_[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{10}"
	[[ $i =~ $re ]]  && rep=${BASH_REMATCH[@]}
	#echo $rep
	new=${i//$rep/_hello}
	mv $i $new
done
