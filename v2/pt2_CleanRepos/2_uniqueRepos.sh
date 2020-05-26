#!/bin/bash
echo File1
sort 'cleanRepos1out.txt' | uniq > uniqueRepos1.txt
echo Done
echo File2
sort 'cleanRepos2out.txt' | uniq > uniqueRepos2.txt
echo Done
echo File3
sort 'cleanRepos3out.txt' | uniq > uniqueRepos3.txt
echo Done