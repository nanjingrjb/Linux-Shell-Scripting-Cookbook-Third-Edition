#!/bin/bash
function fname()

{


 echo $1, $2; #Accessing arg1 and arg2


 echo "$@"; # Printing all arguments as list at once


 echo "$*"; # Similar to $@, but arguments taken as single entity


 return 0; # Return value

}

function name()
{
	read -p "input your name:" name1
	echo $name1;

}

function age()
{
	read -p "input your age:" age1
	echo $age1;

}


#a=$(name)
#b=$(age)
#echo 'a='$a
#echo "b="$b
