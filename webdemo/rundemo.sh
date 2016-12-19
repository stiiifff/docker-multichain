#!/bin/bash -x

echo "Sleep for 30 seconds so the master node has initialised"
sleep 30

IPADDR=`getent hosts $MASTER_NODE | awk -F' ' '{print $1}'`

echo "Setup /app/config.txt"
cat << EOF > /app/config.txt
default.name=MultiChain $CHAINNAME     # name to display in the web interface
default.rpchost=$IPADDR                # IP address of MultiChain node
default.rpcport=$RPC_PORT              # see rpc-port from chain parameters
default.rpcuser=$RPC_USER              # username for RPC from multichain.conf
default.rpcpassword=$RPC_PASSWORD      # password for RPC from multichain.conf
EOF

/run.sh
