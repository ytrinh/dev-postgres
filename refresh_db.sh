#!/bin/bash

docker stop dev-postgres

docker rm dev-postgres

docker build -f ./Dockerfile -t dev-postgres:1.0 .

docker run --restart="unless-stopped" --name dev-postgres -p 5432:5432 -d dev-postgres:1.0

echo "======================="
echo "Ctrl-C to exit log view"
echo "======================="

docker logs -f dev-postgres

