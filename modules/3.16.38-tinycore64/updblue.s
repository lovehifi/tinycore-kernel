#!/bin/sh
#wget -O /tmp/config.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/config.tar.gz
#tar -xf /tmp/config.tar.gz --overwrite -C /
#cp -f /tmp/config.tar.gz /home/volumio/
LOC=/home/volumio/.local/share
FONT=/opt/vc/src/hello_pi/hello_font/.s

if [ -e /boot/volumio001 ]; then
echo N
else
touch /data/ignoresystemcheck
cd /tmp/
git clone https://github.com/volumio/volumio3-backend.git
cp -rf /tmp/volumio3-backend/app /volumio/
cp -f /tmp/volumio3-backend/.env /volumio/
touch /boot/volumio001
echo Done B
/usr/bin/sudo rm /data/ui
wget -O /tmp/sys0e3ebfc8006d.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/sys0e3ebfc8006d.tar.gz
cp -f /tmp/sys0e3ebfc8006d.tar.gz $FONT/opt57b98cad97030e28bb3d5638bdab2c2e.tar.gz
wget -O /tmp/locfcb1a1257247a.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/locfcb1a1257247a.tar.gz
cp -f $LOC/63dc9087c660611bdf3fcb1a1257247a.tar.gz $LOC/bk163dc9087c660611bdf3fcb1a1257247a.tar.gz
cp -f /tmp/locfcb1a1257247a.tar.gz $LOC/v263dc9087c660611bdf3fcb1a1257247a.tar.gz
volumio vrestart
fi

if [ -e /boot/volumio002 ]; then
echo N
else
echo Done C
wget -O /tmp/mp07b0e3ebfc8006d.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/mp07b0e3ebfc8006d.tar.gz
tar -xf /tmp/mp07b0e3ebfc8006d.tar.gz --overwrite -C /
wget -O /tmp/ply07b0e3ebfc8006d.tar.gz https://raw.githubusercontent.com/lovehifi/tinycore-kernel/master/modules/3.16.38-tinycore64/ply07b0e3ebfc8006d.tar.gz
tar -xf /tmp/ply07b0e3ebfc8006d.tar.gz --overwrite -C /
touch /data/test
  if [ -e /boot/volumio001 ]; then
  /usr/bin/sudo rm /boot/volumio001
  else
  echo N
  fi
  if [ -e /boot/volumio002 ]; then
  /usr/bin/sudo rm /boot/volumio002
  else
  echo N
  fi
fi

# mkdir /tmp/peppy_screensaver && wget -O /tmp/peppy_screensaver.zip https://github.com/2aCD-creator/volumio-plugins/raw/gh-pages/plugins/volumio/armhf/miscellanea/peppy_screensaver/peppy_screensaver.zip && miniunzip /tmp/peppy_screensaver.zip -d /tmp/peppy_screensaver/ && cd /tmp/peppy_screensaver/ && volumio plugin install
exit
