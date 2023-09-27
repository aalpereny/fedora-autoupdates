#!/bin/bash
echo "Copy startupsecurityupdate.service to systemd"
sudo cp -v startupsecupdate.service /etc/systemd/system/
echo "Copy systemupdate service and timer to systemd"
sudo cp -v systemupdate.service /etc/systemd/system/
sudo cp -v systemupdate.timer /etc/systemd/system/
echo "Enable startupsecurityupdate.service"
sudo systemctl enable startupsecupdate.service
echo "Enable and run once systemupdate service and timer"
sudo systemctl enable systemupdate.timer
sudo systemctl enable systemupdate.service
sudo systemctl start systemupdate.timer
sudo systemctl start systemupdate.service
