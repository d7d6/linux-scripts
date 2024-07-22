#!/bin/bash
x=`ping -c1 google.com 2>&1 | grep unknown`
if [ ! "$x" = "" ]; then
    echo $(date +%Y-%m-%d_%H:%M) "It's down!! Attempting to restart."
    echo /etc/init.d/networking restart
fi

