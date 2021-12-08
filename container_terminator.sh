#!/bin/sh

cd "$(cd "$(dirname "$0")" && pwd)"

container_name="tut-fastapi"
d_network="tut-fastapi-net"

docker rm -f "${container_name}"
docker network rm "${d_network}"
