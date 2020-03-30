#!/bin/sh
yay -S thinkfan lm_sensors
sudo modprobe thinkpad_acpi
sudo cp /usr/share/doc/thinkfan/examples/thinkfan.conf.simple /etc/thinkfan.conf
systemctl enable thinkfan
echo "check the following output and if successfull run: systemctl enable thinkfan.service"
sudo thinkfan -n
