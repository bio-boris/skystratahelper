#!/usr/bin/env bash
echo "$@" > runtime
sudo "$@" &
