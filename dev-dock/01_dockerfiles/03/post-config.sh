#!/bin/bash
echo "Prebuilding with Dockerfile"
docker build -t ft-gitlab .

echo "Running our gitlab and reconf it"
docker run \
	--name gitlab1 \
	--rm -it \
	-p 2222:22 \
	-p 9418:9418 \
	-p 80:80 \
	-p 443:443 \
	--privileged \
	gitlab /bin/bash

# ssh:// - default port 22
# git:// - default port 9418
# http:// - default port 80
# https:// - default port 443