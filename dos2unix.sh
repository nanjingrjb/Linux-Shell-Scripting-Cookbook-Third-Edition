for m in `ls -d Ch*`
do 
	#echo $m
	cd $m
   for i in `ls *.sh`
     do dos2unix $i
   done
   cd ..
done
