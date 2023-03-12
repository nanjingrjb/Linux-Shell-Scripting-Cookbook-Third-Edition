for i in `ls *.txt`
do echo ${i//.txt/.sh}
	mv $i ${i//.txt/.sh}
done
