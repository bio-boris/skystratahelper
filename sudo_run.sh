#!/usr/bin/env bash
echo "$@" > runtime
chmod 755 runtime
sudo nohup ./runtime &
