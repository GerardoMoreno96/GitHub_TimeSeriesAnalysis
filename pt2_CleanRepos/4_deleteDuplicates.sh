#!/bin/bash
comm -23 uniqueRepos2.txt uniqueRepos1.txt > uniqueRepos21.txt
comm -23 uniqueRepos21.txt uniqueRepos3.txt > uniqueRepos2Final.txt
comm -23 uniqueRepos3.txt uniqueRepos1.txt > uniqueRepos3Final.txt
