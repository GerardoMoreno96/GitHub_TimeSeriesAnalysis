#!/bin/bash
# get the language and timestamp for each repo
START_TIME=$SECONDS
echo [ >> languages3.json
x=1
while read full_name; do
  echo { >> languages3.json 
  echo \"full_name\": \"$full_name\", >> languages3.json
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name | grep -m 1 "\"created_at\":" >> languages3.json
  echo \"languages\" : >> languages3.json
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name/languages  >>  languages3.json
  echo }, >> languages3.json
  x=$(( $x + 1 ))
  if [ $x -ge 2498 ]
  then
    break
  fi
done <uniqueRepos3Final.txt

echo ] >> languages3.json

ELAPSED_TIME=$(($SECONDS - $START_TIME))
echo ELAPSED_TIME

