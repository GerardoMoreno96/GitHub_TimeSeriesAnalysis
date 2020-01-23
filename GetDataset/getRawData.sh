#!/bin/bash
x=1
#make 1666 calls to the api (github's limit)
while [ $x -le 1666 ]
do
  number_of_file=`tail -n 1 numberOfFile.txt`
  id_number=`tail -n 1 idNumber.txt`
  curl -H "Authorization: token TOKEN" https://api.github.com/repositories?since=$id_number | grep '\"id\":\|full_name' >> reposLists/reposList$number_of_file.txt
  python3 getID.py $number_of_file >> idNumber.txt
  x=$(( $x + 1 ))
done

#clean repos list to obtain only the full_name
python3 getFullName.py $number_of_file >> fullNames/fullNameList$number_of_file.txt

# get the language and timestamp for each repo
while read full_name; do
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name | grep -m 1 "\"created_at\":" >> dateAndLanguages/dateAndLanguages$number_of_file.txt
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name/languages  >>  dateAndLanguages/dateAndLanguages$number_of_file.txt
done <fullNames/fullNameList$number_of_file.txt

#remember to use abosulte paths
number_of_file=$(( $number_of_file + 1 ))
echo $number_of_file >> numberOfFile.txt