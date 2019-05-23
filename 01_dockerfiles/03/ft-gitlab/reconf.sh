#!/bin/bash
echo "Launching and reconfigure GITLAB"

# mkdir /etc/gitlab/ssl
# chmod 700 /etc/gitlab/ssl
# cd /etc/gitlab/ssl

openssl req \
    -new \
    -newkey rsa:4096 \
    -days 365 \
    -nodes \
    -x509 \
    -subj "/C=RU/ST=Denial/L=Springfield/O=Dis/CN=192.168.99.100" \
    -keyout gitlab.domain.com.key \
    -out gitlab.domain.com.cert

# Set file permissions
mkdir /etc/gitlab/ssl
cp -r gitlab.domain.com.key gitlab.domain.com.cert /etc/gitlab/ssl

# chmod 600 /etc/gitlab/ssl/gitlab.domain.com.*



#approved certificates on debian
echo "Launching and reconfigure GITLAB SSS"
cp -r gitlab.domain.com.key gitlab.domain.com.cert /usr/share/ca-certificates
update-ca-certificates
wait 3

# chmod 700 /etc/gitlab/ssl


# echo -e "
# nginx['redirect_http_to_https'] = true
# nginx['ssl_certificate'] = "/etc/gitlab/ssl/gitlab.domain.com.crt"
# nginx['ssl_certificate_key'] = "/etc/gitlab/ssl/gitlab.domain.com.key"
# " >> /etc/gitlab/gitlab.rb 


###git selfsigned ssl workaround
# GIT_SSL_NO_VERIFY=true git clone https://username@git.example.com/scm/repository.git








/opt/gitlab/embedded/bin/runsvdir-start &
gitlab-ctl reconfigure


########## SSH SERVER #############
echo "########## SSH SERVER UPPER #############"

sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
	&& sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config \
	&& sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
echo 'root:screencast' | chpasswd
systemctl enable ssh
/usr/sbin/sshd
service ssh restart
tail -f /dev/null