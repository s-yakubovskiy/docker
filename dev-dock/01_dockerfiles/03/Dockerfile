#choosing from install
FROM debian:stretch-slim
#XPOSING PORTS
EXPOSE 22 9418 80 443 2222
#setting environments
ENV PACKAGES ca-certificates curl openssh-server gnupg net-tools nano
#information about deployer
MAINTAINER ["Yoshiko Harwyn", "school-21"]
#run commands
RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install -y $PACKAGES \
	&& curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh 
# WORKDIR /tmp
RUN bash script.deb.sh \
	&& service ssh restart \
	&& apt update -y \
	&& apt install gitlab-ce -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& sed -i 's/http:\/\/gitlab.example.com/http:\/\/192.168.99.100/g' /etc/gitlab/gitlab.rb
# scripting part
COPY reconf.sh /



# ssh:// - default port 22
# git:// - default port 9418
# http:// - default port 80
# https:// - default port 443