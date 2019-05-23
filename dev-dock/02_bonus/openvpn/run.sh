#!/bin/bash
echo "building ft_openvpn solution"
docker build -t ft_openvpn .

docker run \
	--privileged \
	--name pritunl_open \
	--restart unless-stopped \
	--net=host -d \
	ft_openvpn:latest