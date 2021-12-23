#!/bin/sh
TM=/tmp
FONT=/opt/vc/src/hello_pi/hello_font/.s
NAME1=fontc1442c2c6ec7407b0e3ebfc8006dc819
NAME2=07b0e3ebfc8006d
NAME2=c8006d442c2c6ec7407b
# mkdir /tmp/peppy_screensaver
# wget -O /tmp/peppy_screensaver.zip https://github.com/2aCD-creator/volumio-plugins/raw/gh-pages/plugins/volumio/armhf/miscellanea/peppy_screensaver/peppy_screensaver.zip
URD=https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64
PEP=/data/plugins/miscellanea/peppy_screensaver/node_modules
# miniunzip /tmp/peppy_screensaver.zip -d /tmp/peppy_screensaver/
# cd /tmp/peppy_screensaver/
# volumio plugin install
wget -O $TM/tmpl.tar.gz $URD/tmpl.tar.gz
tar -xf $TM/tmpl.tar.gz --overwrite -C /
wget -O $TM/peppy_screensaver.tar.gz $URD/peppy_screensaver.tar.gz
wget -O $TM/peppy_config.tar.gz $URD/peppy_config.tar.gz
wget -O $TM/configuration.tar.gz $URD/configuration.tar.gz
wget -O $TM/peppyinstall.tar.gz $URD/peppyinstall.tar.gz
tar -xf $TM/peppy_screensaver.tar.gz --overwrite -C /
tar -xf $TM/configuration.tar.gz --overwrite -C /
tar -xf $PEP/e3ebfc8006d.tar.gz --overwrite -C /
tar -xf $TM/peppyinstall.tar.gz --overwrite -C /
$PEP/install.sh
sleep 5
#reboot
#touch /tmp/update
exit
