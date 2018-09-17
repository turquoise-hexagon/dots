#!/bin/sh
#
# populate a file in tmp with the current ssid

file=/tmp/ssid

case $2 in
    up) echo "$CONNECTION_ID" > $file;;
    down) > $file
esac
