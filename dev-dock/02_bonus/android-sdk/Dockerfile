#!/bin/bash
# pulling up 
docker pull thyrlian/android-sdk
docker pull thyrlian/android-sdk-vnc
# run android sdk on container
docker run -it \
	--rm \
	-v $(pwd)/sdk:/sdk thyrlian/android-sdk \
	bash -c 'cp -a $ANDROID_HOME/. /sdk'
#generating a pair of key
ssh-keygen
# use your file ssh key path 
docker run -d \
	-p 5901:5901 -p 2223:22 -p 5037:5037 \
	-v vnc-upper.sh:/root \
	-v $(echo $HOME)/.ssh/id_rsa.pub:/root/.ssh/authorized_keys \
	thyrlian/android-sdk-vnc

	# echo $HOME
	# $(echo $HOME)

# docker image rm $(docker image ls -qa) && docker container rm $(docker container -qa)
# docker kill $(docker ps -q) && docker_clean_ps
# docker rmi -f $(docker images -a -q)

