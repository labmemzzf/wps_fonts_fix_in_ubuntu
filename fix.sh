#!/bin/bash
echo "start to fixing the fonts missing error for WPS in Ubuntu"
# uncompress and copy the font files to /usr/share/fonts
unzip ./wps-fonts.zip
sudo cp ./wps-fonts/* /usr/share/fonts

# make index
cd /usr/share/fonts
sudo mkfontscale
sudo mkfontdir

# update cache
sudo fc-cache

echo "fixed"
