#!/usr/bin/env bash

(
    cd backend && make build
)

(
    cd backend2 && make build
)

docker network create -d bridge docker_network_demo

(
    cd database_deployment && docker-compose up -d
)

(
    cd backend1_deployment && docker-compose up -d
)

(
    cd backend2_deployment && docker-compose up -d
)
