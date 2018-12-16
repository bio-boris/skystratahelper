#!/usr/bin/bash
sed "s#http://18.222.179.234:8086#http://$1:8086#g" /etc/telegraf/telegraf.conf > telegraf.conf
sudo cp telegraf.conf /etc/telegraf/telegraf.conf
sudo service telegraf stop
sudo service telegraf start
sudo service telegraf reload 

sudo service telegraf status > telegraf_service_status.log
sudo systemctl status telegraf > telegraf_systemctl_status.log
