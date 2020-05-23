#!/usr/bin/python
import sys

path = "GitHub_TimeSeriesAnalysis/GetDataset/machine{}/reposLists_{}/reposList{}_{}.txt".format(sys.argv[1],sys.argv[1],sys.argv[2],sys.argv[3])
file_to_read = open(path,'r')
for i in file_to_read:
    if i.lstrip().startswith("\"full_name"):
        print(i.lstrip()[14:-3])