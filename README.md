# tourniquet

tourniquet is a USB based killswitch for a Linux system

In Progress...

_ Design a setup.sh script to define/reset the USB device
Here's a one-liner for finding the last MASS STORAGE USB plugged in using DMESG
```
LASTUSB=$(dmesg | grep usb | grep SerialNumber: | tail -1 | awk -F ':' '{print $3}' | sed -e 's/^[ \t]*//')
DEVFOUND=$(ls -al /dev/disk/by-id/|grep $LASTUSB | head -1)
if [[ ! -z $DEVFOUND ]];
then
    echo "Device found! All is right in the world.";
else
    echo "Device lost! Scorch the earth.";
fi
```



