#!/bin/bash

echo "-----------------------------------------------Ping Sweeper Shell Script-----------------------------------------------"
echo " "
echo "enter the range without last octet (eg: 192.168.1)"
read ip1

echo "$ip1">ipaddr
echo " "

#loading bar!
echo "identifying the network ....."
echo -ne '###############                     (33%)\r'
sleep 1
echo -ne '#######################################             (66%)\r'
sleep 1
echo -ne '#####################################################################   (100%)\r'
echo -ne '\n'
echo "  "

CLASS=`cut -d "." -f 1 ipaddr`

sumA=`expr $CLASS - 127`
sumB=`expr $CLASS - 191`

if [ $sumA -lt 0 ] 
then 
	echo "$ip1 is a CLASS A network"
elif [ $sumB -lt 0 ]
then
	echo "$ip1 is a CLASS B network"
else
	echo "$ip1 is a CLASS C network"
fi 

echo "" 
echo "PING SWEEPING STARTS!"
echo ""
for((i=1;i<255;i++))
do
	ip2="$ip1.$i"
	ping -c 1 $ip2 > q2_out.txt
done
echo ""
echo "PING SWEEPER results are stored in out.txt"





