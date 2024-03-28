iplst=($(arp -a |grep -a 192.168.3.|sed '1d'|gawk '{print $1}'))

for i  in ${iplst[*]}
do 
	nbtstat -A $i >>res.txt
done




