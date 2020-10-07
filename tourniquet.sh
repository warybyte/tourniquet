#!/bin/bash
#
# Token Check: This script validates a physical device, like a USB drive, is plugged into the workstation
# while it is running. When removed, the machine shutsdown automatically.
#
tokenpath="/dev/disk/by-id/usb-General_USB_Flash_Disk_08320000000034E4-0:0"
if [ ! -L $tokenpath ]; then
	echo "$(date) -- KEY NOT FOUND. Starting shutdown sequence." >> cron.log
	sudo shutdown -h now;
else
	echo "$(date) -- KEY FOUND." >> cron.log
fi
#
# Load this in your crontab to run at boot and your machine will automatically shut off without it...
#
