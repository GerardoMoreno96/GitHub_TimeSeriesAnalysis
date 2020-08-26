#!/bin/bash -e
idNumber=148674994
#run curl constantly until we reach desired id number
while [ $idNumber -le 223012491 ]
do
    curl -H "Authorization: token TOKEN" https://api.github.com/repositories?since=$idNumber | grep 'full_name' >> /home/ec2-user/curlScripts/script3out.txt 2>>log.txt
    idNumber=$(( $idNumber + 100 )) 2>>log.txt
done

echo "Script 1 finished " >> /home/ec2-user/curlScripts/script3out.txt 2>>log.txts