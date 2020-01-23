#!/usr/bin/python
import sys

path = "/reposLists/reposList{}.txt".format(sys.argv[1])
file_to_read = open(path,'r')
for i in file_to_read:
    if i.lstrip().startswith("\"full_name"):
        print(i.lstrip()[14:-3])