#!/bin/sh
# docker pull thyrlian/android-sdk
# docker pull thyrlian/android-sdk-vnc
# docker run -it \
# 	--rm -v $(pwd)/sdk:/sdk thyrlian/android-sdk \
# 	bash -c 'cp -a $ANDROID_HOME/. /sdk'
# ssh-keygen
# # docker run -d \
# # 	--name sdk-and
# # 	-p 5901:5901 -p 2222:22 -p 5037:5037 \
# # 	-v $(pwd)/sdk:/opt/android-sdk \
# # 	-v $HOME/.ssh/id_rsa.pub:/root/.ssh/authorized_keys \
# # 	thyrlian/android-sdk-vnc
# sleep 1

# docker run -d \
# 	-p 5901:5901 -p 2223:22 -p 5037:5037 \
# 	--rm \
# 	-v /Users/yharwyn-/.ssh/id_rsa.pub:/root/.ssh/authorized_keys \
# 	thyrlian/android-sdk-vnc
## docker exec -it 

# https://github.com/s-yakubovskiy/tmp.git

##how to##
docker-machine ssh Char
git clone https://github.com/s-yakubovskiy/tmp.git && cd tmp/ && ./Dockerfile