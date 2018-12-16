#!/usr/bin/bash
sed "s#http://18.222.179.234:8086#http://$1:8086#g" /etc/telegraf/telegraf.conf > telegraf.conf
sudo cp telegraf.conf /etc/telegraf/telegraf.conf
sudo systemctl restart telegraf 
sudo systemctl reload telegraf
sudo systemctl status telegraf > telegraf.log
