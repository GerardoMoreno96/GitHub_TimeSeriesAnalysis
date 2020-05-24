#!/bin/bash
echo File1 name
read file1
echo File2 name
read file2
sort $file1 $file2 | uniq -d > duplicates$file1$file2
echo Done
