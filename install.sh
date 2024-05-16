#!/usr/bin/env bash
STORAGE="/mnt/storage"

if [ ! -d $STORAGE ]; then
    echo "$STORAGE does not exist!! Disks are not properly mounted"
    exit
fi

sudo apt install docker-compose
