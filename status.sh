#!/bin/bash
user=root
for host in `cat hosts.txt`; do
    echo $host
    ssh $user@$host "hostname; uptime; ps uax | egrep 'itarmy|db100'; iftop -t -s 10"
done
