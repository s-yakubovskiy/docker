#!/bin/sh
# From a debian image you will add the appropriate sources to create a TeamSpeak # server, that will launch along with your container. It will be deemed valid if at least # one user can connect to it and engage in a normal discussion (no far-fetched setup), so # be sure to create your Dockerfile with the right options. Your program should get the # sources when it builds, they cannot be in your repository.

#from where
FROM debian:stretch

# COPY script.sh /

EXPOSE 9987/udp 10011 30033
#preinstallation update and inastalling helpful apk
RUN apt-get update && apt-get install -y \
	apt-utils \
	bzip2 \
	wget \
 	&& rm -rf /var/lib/apt/lists/* \
 	&& wget https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2 \
 	&& tar xvf teamspeak3-server_linux_amd64-3.6.1.tar.bz2

WORKDIR teamspeak3-server_linux_amd64


ENTRYPOINT sh ts3server_minimal_runscript.sh license_accepted=1
# ENTRYPOINT ["/ts3/teamspeak3-server_linux_amd64/./ts3server_minimal_runscript.sh license_accepted=1"]

    # wget https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2;
    # tar xvf teamspeak3-server_linux_amd64-3.6.1.tar.bz2;