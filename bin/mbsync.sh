#!/bin/sh

while :
do
    killall mbsync
    mbsync -a -q
    sleep 300
done
