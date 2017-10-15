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
## Updated: Time-stamp: <2017-10-15 15:47:48>
##-------------------------------------------------------------------
set -e

lsof -i tcp:$SERVER_PORT | grep LISTEN
## File: hello ends
