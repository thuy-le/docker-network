#!/usr/bin/env bash

(
    cd backend && make build
)

(
    cd backend2 && make build
)

docker network create -d bridge demonetwork_private1
docker network create -d bridge demonetwork_private2

(
    cd demo_network_database && docker-compose up -d
)

(
    cd demo_network_deployment1 && docker-compose up -d
)

(
    cd demo_network_deployment2 && docker-compose up -d
)
