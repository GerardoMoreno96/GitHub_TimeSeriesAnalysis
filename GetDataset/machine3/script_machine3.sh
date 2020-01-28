#!/bin/bash -e
x=1
#make 5000 calls to the api (github's limit)
while [ $x -le 5000 ]
do
  number_of_file=`tail -n 1 GitHub_TimeSeriesAnalysis/GetDataset/machine3/numberOfFile_3.txt 2>>log.txt`
  id_number=`tail -n 1 GitHub_TimeSeriesAnalysis/GetDataset/machine3/idNumber_3.txt 2>>log.txt`
  if [ $id_number -gt 148674994 ] #74337497+74337497+74337496
  then
    if [ $id_number -le 223012490 ]
    then
      curl -H "Authorization: token TOKEN" https://api.github.com/repositories?since=$id_number | grep '\"id\":\|full_name' >> GitHub_TimeSeriesAnalysis/GetDataset/machine3/reposLists_3/reposList$number_of_file.txt 2>>log.txt
      python3 GitHub_TimeSeriesAnalysis/GetDataset/getID.py 3 $number_of_file >> GitHub_TimeSeriesAnalysis/GetDataset/machine3/idNumber_3.txt 2>>log.txt
      x=$(( $x + 1 ))
    fi
  else
    break
  fi
done

if [ $id_number -gt 148674994 ]
then
  if [ $id_number -le 223012490 ]
  then
    #clean repos list to obtain only the full_name
    python3 GitHub_TimeSeriesAnalysis/GetDataset/getFullName.py 3 $number_of_file >> GitHub_TimeSeriesAnalysis/GetDataset/machine3/fullNames_3/fullNameList$number_of_file.txt 2>>log.txt

    #remember to use abosulte paths
    number_of_file=$(( $number_of_file + 1 ))
    echo $number_of_file >> GitHub_TimeSeriesAnalysis/GetDataset/machine3/numberOfFile_3.txt 2>>log.txt
  fi
else 
  echo "Script 3 finished" >> GitHub_TimeSeriesAnalysis/GetDataset/results.txt 2>>log.txt
fi