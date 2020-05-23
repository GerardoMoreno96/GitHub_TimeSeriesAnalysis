# get the language and timestamp for each repo
while read full_name; do
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name | grep -m 1 "\"created_at\":" >> GitHub_TimeSeriesAnalysis/dateAndLanguages/dateAndLanguages$number_of_file.txt
  curl -H "Authorization: token TOKEN" https://api.github.com/repos/$full_name/languages  >>  GitHub_TimeSeriesAnalysis/dateAndLanguages/dateAndLanguages$number_of_file.txt
done <GitHub_TimeSeriesAnalysis/fullNames/fullNameList$number_of_file.txt
