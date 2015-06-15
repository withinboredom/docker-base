#!/bin/bash

trap 'consul leave; s6-svscanctl -t /etc/s6' HUP INT QUIT KILL TERM

/package/admin/s6-2.1.3.0/command/s6-svscan /etc/s6 &

wait