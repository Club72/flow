#!/bin/bash

POOL=stratum+tcp://eth-pool.beepool.org:9530
WALLET=denovb33
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-ovo

cd "$(dirname "$0")"

chmod +x ./ovo && sudo ./ovo -a ethash -o $POOL -u $WALLET.$WORKER $@
