#!/bin/bash -e
idNumber=74337497
#run curl constantly until we reach desired id number
while [ $idNumber -le 148674994 ]
do
    curl -H "Authorization: token TOKEN" https://api.github.com/repositories?since=$idNumber | grep 'full_name' >> /home/ec2-user/curlScripts/script2out.txt 2>>log.txt
    idNumber=$(( $idNumber + 100 )) 2>>log.txt
done

echo "Script 1 finished " >> /home/ec2-user/curlScripts/script2out.txt 2>>log.txt