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

a[100]=foo
echo "array len is ${#a[*]}"
echo "array elem len is ${#a[100]}"

echo "show foo array is:"
foo=([2]=a [4]=b [6]=c)
for i in "${foo[*]}";
do echo $i;
done
echo "show foo no empty index is:"

for i in "${!foo[*]}";
do echo $i;
done

echo "original arr is:"
foo=(a b c)
echo "${foo[@]}"
foo+=(e f g)
echo "new len :${#foo[*]}"
echo "new arr is:"
for i in  "${foo[@]}";
do echo $i
done


a=(1 6 56 4 0)
echo "Original array: ${a[@]}"
a_sorted=($(for i in "${a[@]}"; do echo $i; done | sort -n))
echo "Sorted array:   ${a_sorted[@]}"

