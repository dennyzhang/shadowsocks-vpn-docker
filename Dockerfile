########## How To Use Docker Image ###############
##
##  Image Name: denny/shadowsocks-vpn-docker:latest
##  Install docker utility
##  Download docker image: docker pull denny/shadowsocks-vpn-docker:latest
##  Build Image From Dockerfile. docker build  -t denny/shadowsocks-vpn-docker:latest --rm=true .
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
MAINTAINER DennyZhang.com <https://dennyzhang.com>

ENV VPN_PASSWORD "DamnGFW"
ENV SERVER_PORT "6187"

COPY shadowsocks.json /etc/shadowsocks.json
COPY docker-entrypoint.sh /root/docker-entrypoint.sh
COPY docker-healthcheck.sh /root/docker-healthcheck.sh

########################################################################################
RUN apt-get -y update && \
    apt-get install -y lsof wget telnet && \
    apt-get install -y python-pip python-m2crypto lsof && \
    pip install shadowsocks && \
    chmod o+x /root/*.sh && \

# clean up, to make image smaller
   rm -rf /var/cache/* && \
   rm -rf /tmp/* /var/tmp/* && \
   rm -rf /usr/share/doc

ENTRYPOINT /root/docker-entrypoint.sh

HEALTHCHECK --interval=2m --timeout=3s \
            CMD $HOME/docker-healthcheck.sh || exit 1
########################################################################################
