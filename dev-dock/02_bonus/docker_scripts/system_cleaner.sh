#!/bin/bash
docker kill $(docker ps -q) && docker_clean_ps
docker rmi -f $(docker images -a -q)
