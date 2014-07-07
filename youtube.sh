#!/bin/sh

PATH=/bin:/usr/local/bin:/usr/bin:/bin:/sbin
export PATH
homedir=${HOME}

SERVICE=youtube-dl

if ps ax | grep -v grep | grep -v $0 | grep $SERVICE > /dev/null

then
    echo "`date`: $SERVICE is running, your videos is downloading"
else
    echo "$SERVICE is not running and going to run now"

    youtube-dl -c -a $homedir/tube
fi
