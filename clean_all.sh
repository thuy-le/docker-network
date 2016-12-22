#!/usr/bin/env bash

(docker rm -f $(docker ps -a --filter name=demonetwork -q) && true) && \
(docker network rm $(docker network ls --filter name=demonetwork -q) && true) && \
(docker rmi $(docker images | grep my-host | awk "{print \$3}") && true) && \
(docker rm -f $(docker ps -a --filter name=test -q) && true) && \
