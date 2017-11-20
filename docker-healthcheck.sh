#!/usr/bin/env bash
##-------------------------------------------------------------------
## @copyright 2017 DennyZhang.com
## Licensed under MIT 
##   https://www.dennyzhang.com/wp-content/mit_license.txt
##
## File: docker-healthcheck.sh
## Author : Denny <https://www.dennyzhang.com/contact>
## Description :
## --
## Created : <2017-10-15>
## Updated: Time-stamp: <2017-11-13 11:01:13>
##-------------------------------------------------------------------
set -e

lsof -i tcp:$SERVER_PORT | grep LISTEN
## File: docker-healthcheck.sh
