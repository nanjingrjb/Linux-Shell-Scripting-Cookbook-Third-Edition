#########################################################################
# File Name: arrayscan.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Jul 25 18:19:09 2023
#########################################################################
#!/bin/bash
animals=("a dog" "a cat" "a fish")
echo "using \"{array[*]}\""
for i in "${animals[*]}";
do echo $i;
done

echo "using \"{array[@]}\""
for i in "${animals[@]}";
do echo $i;
done

echo "using {array[@]}"
for i in ${animals[@]};
do echo $i;
done

echo "using {array[*]}"
for i in ${animals[*]};
do echo $i;
done

