#########################################################################
# File Name: readconfig.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Apr 24 00:25:34 2023
#########################################################################
#!/bin/bash
config=ls.txt
despath=/mnt/d/001_BaseVerBackup
datenow=`date +%Y%m%d_%H%M%S`
desdir=$despath/${datenow}_backups
desname=${datenow}_backups.tar
mkdir $desdir
exec 0< $config
read filename outname
while [ $? -eq 0 ]
do
	#filelst="$filelst $filename"
	#echo "in=$filename"
	#echo "out=$outname"
	if [ -e $filename ] && [ ! -z $outname ];then
		#echo "all exist.please copy."
		#if [ ! -e $desdir/$outname ];then
		#	mkdir	$desdir/$outname
		#fi
		#echo $outname
		toke=(`echo $outname|tr '/' ' '`)
		if [ ${#toke[*]} -gt 1 ] && [ ! -d $desdir/${toke[0]} ];then
			mkdir $desdir/${toke[0]}
		fi
		cp -r $filename/* $desdir/$outname
	fi
	read filename  outname
done
cd $despath
tardir=`ls -lt  | grep $USER | head -n 1 |awk '{print $9}'`
echo $tardir
if [ -d $tardir/src_35L/.git  ];then
	rm -fr $tardir/src_35L/.git
fi

tar -cjf ${tardir}.tar  $tardir 2> /dev/null
rm -fr $tardir
echo "tar finished."
