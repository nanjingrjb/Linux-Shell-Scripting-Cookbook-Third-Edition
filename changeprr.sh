for m in `ls -d Ch*`
do 
	#echo $m
	cd $m
   for i in `ls *.txt`
     do echo ${i//.txt/.sh}
	mv $i ${i//.txt/.sh}
   done
   cd ..
done
