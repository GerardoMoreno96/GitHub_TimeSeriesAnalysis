#!/usr/bin/python
import sys

path = "GitHub_TimeSeriesAnalysis/GetDataset/machine{}/reposLists_{}/reposList{}_{}.txt".format(sys.argv[1],sys.argv[1],sys.argv[2],sys.argv[3])
file_to_read = open(path,'r')
count = 1
id_number = 0
for i in file_to_read:
    if i.lstrip().startswith("\"id"):
        if not (count%2==0):
            id_number =  i.lstrip()[6:-2]
        count+=1
print(id_number)