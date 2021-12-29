#!/bin/sh
#wget -O /tmp/config.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/config.tar.gz
#tar -xf /tmp/config.tar.gz --overwrite -C /
#cp -f /tmp/config.tar.gz /home/volumio/

wget -O /tmp/app-index.js https://raw.githubusercontent.com/volumio/volumio3-backend/master/app/index.js
wget -O /tmp/alsa_controller-index.js https://raw.githubusercontent.com/volumio/volumio3-backend/master/app/plugins/audio_interface/alsa_controller/index.js
wget -O /tmp/mpd.conf.tmpl https://raw.githubusercontent.com/volumio/volumio3-backend/master/app/plugins/music_service/mpd/mpd.conf.tmpl
wget -O /tmp/.env https://raw.githubusercontent.com/volumio/volumio3-backend/master/.env
chown volumio:volumio /tmp/app-index.js
chown volumio:volumio /tmp/alsa_controller-index.js
chown volumio:volumio /tmp/mpd.conf.tmpl
chown volumio:volumio /tmp/.env
# mv -f /tmp/app-index.js /volumio/app/index.js
# mv -f /tmp/alsa_controller-index.js /volumio/app/plugins/audio_interface/alsa_controller/index.js
# mv -f /tmp/mpd.conf.tmpl /volumio/app/plugins/music_service/mpd/
# mv -f /tmp/.env /volumio/

wget -O /tmp/mp07b0e3ebfc8006d.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/mp07b0e3ebfc8006d.tar.gz
tar -xf /tmp/mp07b0e3ebfc8006d.tar.gz --overwrite -C /

wget -O /tmp/ply07b0e3ebfc8006d.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/ply07b0e3ebfc8006d.tar.gz
tar -xf /tmp/ply07b0e3ebfc8006d.tar.gz --overwrite -C /

# mkdir /tmp/peppy_screensaver && wget -O /tmp/peppy_screensaver.zip https://github.com/2aCD-creator/volumio-plugins/raw/gh-pages/plugins/volumio/armhf/miscellanea/peppy_screensaver/peppy_screensaver.zip && miniunzip /tmp/peppy_screensaver.zip -d /tmp/peppy_screensaver/ && cd /tmp/peppy_screensaver/ && volumio plugin install
exit
