if date
then 
	echo "it worked"
fi
echo -e '\n'
if asd
then 
	echo "it not worked"
fi
echo 'We are outside the if statement'


read -p "your score:"  score
echo $score
if [ $score -lt 60 ]
then echo "failed"
elif [ $score -gt 90 ]
then echo "best"
elif [ $score -gt 80 ]
then echo "good"
else echo "normal"
fi


echo "采用(())进行判断，只支持整数判断"

if (($score < 60))
then echo "failed"
elif (($score >= 90))
then echo "best"
elif (($score >= 80 ))
then echo "good"
else echo "normal"
fi

