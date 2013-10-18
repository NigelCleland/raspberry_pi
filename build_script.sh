#!/bin/bash
sudo apt-get update
sudo mkdir /mnt/usb
sudo echo "UUID=203eb21f-5319-4a27-a43d-59a8d3fb6ea1 /mnt/usb  ext4 defaults 0 0 " >>/etc/fstab
sudo apt-get install samba samba-common-bin -y
sudo apt-get install qbittorrent-nox -y
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.original
sudo smbpasswd -a pi
sudo cp qbittorrent-nox-daemon /etc/init.d/qbittorrent-nox-daemon
sudo chmod 755 /etc/init.d/qbittorrent-nox-daemon
sudo update-rc.d qbittorrent-nox-daemon defaults
