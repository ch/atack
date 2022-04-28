#!/bin/bash
user=root
for host in `cat hosts.txt`; do
    echo $host
    rsync -cvrt crontab.txt $user@$host:
    rsync -cvrt install.sh $user@$host:
    rsync -cvrt restart.sh $user@$host:
    ssh $user@$host "./install.sh"
done
