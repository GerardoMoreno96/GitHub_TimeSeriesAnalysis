#!/usr/bin/python
import sys

file_to_read = open("reposList.txt",'r')
count = 1
for i in file_to_read:
    if i.lstrip().startswith("\"id"):
        if not (count%2==0):
            print(i.lstrip()[6:-2])
        count+=1