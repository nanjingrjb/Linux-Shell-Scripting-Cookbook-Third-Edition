for m in `ls -d Ch*`
do 
	set -x
	echo $m
	set +x
	cd $m
   for i in `ls *.sh`
     do chmod 777  $i
   done
   cd ..
done
