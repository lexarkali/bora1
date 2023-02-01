#!/bin/bash/
if [ "$EUID" -ne 0 ]
  then
  echo "Please run with SUDO (as root)"
  exit
fi
if [[ -f "/etc/lsb-release" || -f "/etc/debian_version" ]]
    then
        echo "Linux Ubuntu detected and is supported"
    else
        echo "This Linux Distro is not supported, exiting..."
        exit
    fi
echo "Written by Burhan Rana - YouTube: www.youtube.com/burhanrana / Twitter: https://twitter.com/burhangee"
echo "This fixes USB issues on Linux by restarting USBMUXD"
echo "Please keep this terminal minimized"
sudo systemctl stop usbmuxd && sudo usbmuxd -p -f
