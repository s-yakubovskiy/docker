#from where
FROM debian:stretch
#ports config
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

#build and run with
# docker build -t ex01 . && docker run --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01