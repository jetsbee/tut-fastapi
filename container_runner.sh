#!/bin/sh

proj_path="$(cd "$(dirname "$0")" && pwd)"

d_network="tut-fastapi-net"

docker network create "${d_network}"

container_name="tut-fastapi"

docker run \
  --rm \
  -d \
  --name "${container_name}" \
  --network "${d_network}" \
  -v "/""${proj_path}":/home/"${container_name}" \
  -w //home/"${container_name}" \
  -u "$(id -u)":"$(id -g)" \
  -e HOME=//home/"${container_name}"/remote-config \
  python:3.8.12-buster \
  sleep infinity
