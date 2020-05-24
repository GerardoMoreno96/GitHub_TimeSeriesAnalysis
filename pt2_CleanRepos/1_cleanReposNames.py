#!/usr/bin/python

file_to_read = open("/home/ec2-user/Dataset/script1out.txt","r",buffering=200000000)
with open("/home/ec2-user/Dataset/cleanRepos1out.txt","w") as f:
    for i in file_to_read:
        if len(i)  < 5000:
            if not i.lstrip().startswith("Script 1 finished"):
                repo = i.lstrip()[14:-3]
                f.write(repo+"\n")
    print("#### DONE #### ")