#!/bin/bash
# Run update as this is most likely a fresh install
sudo apt-get update

# Set up the external hard drive
sudo mkdir /mnt/usb
sudo echo "UUID=203eb21f-5319-4a27-a43d-59a8d3fb6ea1 /mnt/usb  ext4 defaults 0 0 " >>/etc/fstab

# Set up the Samba Server
sudo apt-get install samba samba-common-bin -y
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.original
sudo smbpasswd -a

# Set up the Bittorrent Server
sudo apt-get install qbittorrent-nox -y
sudo cp qbittorrent-nox-daemon /etc/init.d/qbittorrent-nox-daemon#
sudo chmod 755 /etc/init.d/qbittorrent-nox-daemon
sudo update-rc.d qbittorrent-nox-daemon defaults

# Get git
sudo apt-get install git

# Python Stuff
sudo apt-get install python-pip

# Set up the Tvnamer
git clone git://github.com/tvnamer.git ~/tvnamer
cd ~/tvnamer
sudo python setup.py install

# Reboot the System
sudo reboot
