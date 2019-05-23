#!/bin/bash
echo "Prebuilding with Dockerfile"
cd ../
docker build -t ft-gitlab .
echo "Running our gitlab and reconf it"
docker run \
	--name gitlab \
	--rm -it \
	-d \
	-p 2222:2222 \
	-p 9418:9418 \
	-p 80:80 \
	-p 443:443 \
	--privileged \
	ft-gitlab /bin/bash
sleep 1
docker cp ft-gitlab/gitlab.rb gitlab:/etc/gitlab/gitlab.rb
docker exec -it gitlab bash reconf.sh



