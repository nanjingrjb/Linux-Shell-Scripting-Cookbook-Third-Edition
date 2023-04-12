name[0]=testfind
name[1]=phonenum.sh
if [ -d ./${name[0]} ];then
	echo "dir ${name[0]} exist"
fi


if [ -f ./${name[1]} ];then
	echo "file ${name[1]} exist"
fi

for i in ${name[*]};do
	if [ -d $i ];then
	echo "dir ${name[0]} exist"
	elif [ -f $i ];then
	echo "file ${name[1]} exist"
	fi
done


