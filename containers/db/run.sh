#!/bin/sh

function usage {
    echo "Usage:
    $0 <env> <port>
e.g.
    $0 staging 25432
    $0 production 35432
"
}


ENV_NAME=$1
if [ -z $ENV_NAME ]; then
    usage
    exit 1
fi

ENV_PORT=$2
if [ -z $ENV_PORT ]; then
    usage
    exit 1
fi

docker run --name "biketag-db-${ENV_NAME}" -p $ENV_PORT:5432 -d postgis/postgis
