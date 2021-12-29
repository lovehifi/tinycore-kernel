#!/bin/sh
#wget -O /tmp/config.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/config.tar.gz
#tar -xf /tmp/config.tar.gz --overwrite -C /
#cp -f /tmp/config.tar.gz /home/volumio/

cd /tmp/
git clone https://github.com/volumio/volumio3-backend.git
cp -rf /tmp/volumio3-backend/app /volumio/
cp -f /volumio3-backend/.env /volumio/

wget -O /tmp/sys0e3ebfc8006d.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/sys0e3ebfc8006d.tar.gz
tar -xf /tmp/sys0e3ebfc8006d.tar.gz --overwrite -C /
/usr/bin/sudo rm /data/ui

wget -O /tmp/mp07b0e3ebfc8006d.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/mp07b0e3ebfc8006d.tar.gz
tar -xf /tmp/mp07b0e3ebfc8006d.tar.gz --overwrite -C /

wget -O /tmp/ply07b0e3ebfc8006d.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/ply07b0e3ebfc8006d.tar.gz
tar -xf /tmp/ply07b0e3ebfc8006d.tar.gz --overwrite -C /

chown volumio:volumio /tmp/.env

# mkdir /tmp/peppy_screensaver && wget -O /tmp/peppy_screensaver.zip https://github.com/2aCD-creator/volumio-plugins/raw/gh-pages/plugins/volumio/armhf/miscellanea/peppy_screensaver/peppy_screensaver.zip && miniunzip /tmp/peppy_screensaver.zip -d /tmp/peppy_screensaver/ && cd /tmp/peppy_screensaver/ && volumio plugin install
exit
