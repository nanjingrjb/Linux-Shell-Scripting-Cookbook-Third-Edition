var1=100
var2=45
var3=`echo "scale=4; $var1 / $var2" | bc`
echo The answer for this is $var3


echo "scale=4;3*8/7"|bc