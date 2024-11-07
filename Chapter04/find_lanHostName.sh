iplst=($(arp -a |grep -a 192.168.3.|sed '1d'|gawk '{print $1}'))

for i  in ${iplst[*]}
do 
	nbtstat -A $i&&sed '/------/,5p' >lan.txt
done




