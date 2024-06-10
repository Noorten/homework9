#!/bin/bash
sudo -i
apt install nfs-kernel-server -y
sleep 30
mkdir -p /srv/share/upload
chown -R nobody:nogroup /srv/share
chmod 0777 /srv/share/upload
sudo bash -c 'echo "/srv/share 192.168.50.11/32(rw,sync,root_squash)" > /etc/exports'
exportfs -r
echo "все в первом скрипте отработало"
sleep 30
