########## How To Use Docker Image ###############
##
##  Image Name: denny/ss:v2
##  Install docker utility
##  Download docker image: docker pull denny/ss:v2
##  Build Image From Dockerfile. docker build -f ss_v2.dockerfile -t denny/ss:v2 --rm=true .
##
##  Image link: https://github.com/DennyZhang/devops_docker_image/blob/tag_v6/shadowsock
##  Read more: https://www.dennyzhang.com/free_vpn
##
##  Start Container:
##   docker-compose up -d
##
##  Customization credential:
##   Update shadowsocks.json, and restart docker-compose.
##   Default password: DamnGFW1234, default server port: 6187
##################################################

FROM ubuntu:14.04
MAINTAINER DennyZhang.com <http://dennyzhang.com>

ARG VPN_PASSWORD="DamnGFW1234"
ARG SERVER_PORT="6187"

########################################################################################
RUN apt-get -y update && \
    apt-get install -y lsof wget telnet && \
    apt-get install -y python-pip python-m2crypto lsof && \
    pip install shadowsocks && \

# Configure shadowsock password
   wget -O /etc/shadowsocks.json \
        https://raw.githubusercontent.com/DennyZhang/devops_docker_image/tag_v6/shadowsock/resource/shadowsocks.json && \
   sed -i "s/DamnGFW/${VPN_PASSWORD}/g" /etc/shadowsocks.json && \
   sed -i "s/6188/${SERVER_PORT}/g" /etc/shadowsocks.json && \

# clean up, to make image smaller
   rm -rf /var/cache/* && \
   rm -rf /tmp/* /var/tmp/* && \
   rm -rf /usr/share/doc

CMD ["ssserver", "-c", "/etc/shadowsocks.json"]

HEALTHCHECK --interval=2m --timeout=3s \
            CMD lsof -i tcp:6187 | grep LISTEN || exit 1
########################################################################################
