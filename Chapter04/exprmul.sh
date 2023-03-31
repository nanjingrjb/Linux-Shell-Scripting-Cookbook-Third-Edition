var1=10
var2=20
var3=`expr $var2 \* $var1`
echo "$var1*$var2 is $var3"
 
var3=`expr $var2 / $var1`
echo "$var2/$var1 is $var3"
 
var3=`expr $var2 + $var1`
echo "$var2+$var1 is $var3"
 
var3=`expr $var2 - $var1`
echo "$var2-$var1 is $var3"
 
