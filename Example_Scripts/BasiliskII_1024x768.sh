#!/bin/bash
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

BLII_CPU_MASK=03
BLII_EXE_NAME="BasiliskII"
BLII_VMODE="-r 1024 768 rgb32"
BLII_HOME_DIR="/media/fat/BasiliskII"
BLII_OPTIONS="--config .basilisk_ii_prefs_1024x768"
BLII_LIB_PATH="$BLII_HOME_DIR/arm-linux-gnueabihf:$BLII_HOME_DIR/arm-linux-gnueabihf/pulseaudio"
BLII_CONF_TMP="/tmp/BLII.config"
BLII_CONF="$BLII_HOME_DIR/.config"

if [ -d "$BLII_CONF_TMP" ];
then
	echo "Removing --> $BLII_CONF_TMP"
	rm -rf "$BLII_CONF"
fi
echo "Creating DIR --> $BLII_CONF_TMP"
mkdir "$BLII_CONF_TMP"

if [ -L "$BLII_CONF" ]; 
then
	echo "$BLII_CONF is a symlink - perfect :)"
else
	if [ -d "$BLII_CONF" ];
	then
		echo "Removing --> $BLII_CONF"
		rm -rf "$BLII_CONF"
	fi
	echo "Linking $BLII_CONF_TMP --> $BLII_CONF"
	ln -s "$BLII_CONF_TMP" "$BLII_CONF"
fi

echo "Setting Video mode --> $BLII_VMODE"
vmode $BLII_VMODE

echo "Setting library path..."
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$BLII_LIB_PATH"
echo $LD_LIBRARY_PATH
echo "Setting BasiliskII HOME path..."
export HOME="$BLII_HOME_DIR"

cd $BLII_HOME_DIR
echo "Starting BasiliskII..."
taskset $BLII_CPU_MASK $BLII_HOME_DIR/$BLII_EXE_NAME $BLII_OPTIONS 
echo "Removing --> $BLII_CONF_TMP"
rm -rf "$BLII_CONF_TMP"



