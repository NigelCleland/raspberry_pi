# Raspberry Pi Installation Help

Hi future self, if you're here that means your Raspberry Pi server has most
likely bonked itself again. Never fear, last time you did this you actually
sorted your shit out and saved some of the steps you made.

To use this:

```
scp raspberry_pi pi@192.168.2.x:/home/pi/
ssh pi@192.168.2.x
cd /home/pi/raspberry_pi
chmod 755 build_script.sh
build_script.sh
```

Fun right, congrats you just saved yourself a whole lot of pain!


References:

http://www.nilug.org/learning_linux/raspberry_pi_file_torrent_server.html

https://github.com/qbittorrent/qBittorrent/wiki/Running-qBittorrent-without-X-server

http://launchpadlibrarian.net/38905385/qbittorrent

http://askubuntu.com/questions/182131/samba-does-not-accept-my-password
