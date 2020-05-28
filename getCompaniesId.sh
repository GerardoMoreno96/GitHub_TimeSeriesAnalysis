#!/bin/bash
# get each company Id
while read company_name; do
  curl -H "Authorization: token TOKEN" https://api.github.com/users/$company_name | grep -m 1 "\"id\":"  >>  companiesIds.txt
done <companies.txt
