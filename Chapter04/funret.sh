doubleval()
{
	read val
	dval=$((val*2))
	echo $dval
#	return $dval
}


ret=$(doubleval)
#print "%d double val is %d " val ret
echo "val is $ret"

