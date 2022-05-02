#!/bin/bash
user=root
for host in `cat hosts.txt`; do
    echo $host
    ssh $user@$host "hostname; uptime; docker stats --no-stream; iftop -t -s 10 -L 5"
done
