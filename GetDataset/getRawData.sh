#!/bin/bash
# The cronjob is executed at minute 50 of every hour
#50 * * * * sh getRawData.sh

x=1
while [ $x -le 5000 ]
do
  number=`tail -n 1 idNumber.txt`
  curl -H "Authorization: token TOKEN" https://api.github.com/repositories?since=$number >> reposList.txt
  python3 getID.py > idNumber.txt
  x=$(( $x + 1 ))
done
