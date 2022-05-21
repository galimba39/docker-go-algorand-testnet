#!/usr/bin/env bash

cp -p /docker/config.json /node/data/config.json
cp -p /docker/kmd_config.json /node/data/kmd-v0.5/kmd_config.json
mv -f /node/genesisfiles/testnet/genesis.json /node/data

CATCHPOINT=$(curl https://algorand-catchpoints.s3.us-east-2.amazonaws.com/channel/testnet/latest.catchpoint)

goal node start
goal node catchup $CATCHPOINT
while true
do
    echo "Press [CTRL+C] to stop.."
    sleep 1
done
#carpenter -D
#goal node stop
