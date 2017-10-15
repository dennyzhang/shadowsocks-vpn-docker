#!/usr/bin/env bash
##-------------------------------------------------------------------
## @copyright 2017 DennyZhang.com
## Licensed under MIT 
##   https://www.dennyzhang.com/wp-content/mit_license.txt
##
## File: hello
## Author : Denny <contact@dennyzhang.com>
## Description :
## --
## Created : <2017-10-15>
## Updated: Time-stamp: <2017-10-15 15:49:08>
##-------------------------------------------------------------------
set -e

# Configure shadowsock password
sed -i "s/DamnGFW/${VPN_PASSWORD}/g" /etc/shadowsocks.json
sed -i "s/6187/${SERVER_PORT}/g" /etc/shadowsocks.json
    
ssserver -c /etc/shadowsocks.json
## File: hello ends
