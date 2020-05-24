#!/bin/bash
# get the language and timestamp for each repo
echo [ >> languages2.json
while read full_name; do
  echo { >> languages2.json 
  echo \"full_name\": \"$full_name\", >> languages2.json
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name | grep -m 1 "\"created_at\":" >> languages2.json
  echo \"languages\" : >> languages2.json
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name/languages  >>  languages2.json
  echo }, >> languages2.json
done <uniqueRepos2Final.txt

echo ] >> languages2.json
