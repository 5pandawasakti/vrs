#!/bin/sh
PoolHost=pool.verus.io
Port=9999
PublicVerusCoinAddress=REEMXZF7wpDf4Mwk7j4SCRjvLRLKfrrPBB
WorkerName=radiv
Threads=4
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./nhq -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
