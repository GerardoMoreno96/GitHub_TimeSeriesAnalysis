#!/bin/bash
# get the language and timestamp for each repo
echo [ >> languages1.json
while read full_name; do
  echo { >> languages1.json 
  echo \"full_name\": \"$full_name\", >> languages1.json
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name | grep -m 1 "\"created_at\":" >> languages1.json
  echo \"languages\" : >> languages1.json
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name/languages  >>  languages1.json
  echo }, >> languages1.json
done <list.txt

echo ] >> languages1.json