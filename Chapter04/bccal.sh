#########################################################################
# File Name: bccal.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Fri Aug 11 18:45:21 2023
#########################################################################
#!/bin/bash
#!/bin/bash

var1=10.46
var2=43.67
var3=33.2
var4=71

var5=$(bc << EOF
scale = 4
$var1 * $var2 + $var3 * $var4
EOF
)

echo The final answer for this mess is $var5


a=1.5
b=6.5
c=$(bc << EOF
scale = 4
$a+$b
EOF
)
echo "$a+$b=$c"
echo "$a-$b=$(bc << EOF
     scale = 4
     $a-$b
EOF
)"



bccal_in()
{
	c=$(bc<<EOF
	scale=4
a=1
b=2.3
a*b+a+b
EOF
)
echo "inside is :$c"
}




bccal_out()
{
	a=1
	b=2.3
	c=$(bc<<EOF
	scale=4
	$a*$b+$a+$b
EOF
)
echo "outside add '$' $c"
}

bccal_in
bccal_out

