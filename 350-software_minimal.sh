#!/bin/bash
set -e

# 350-software_arch.sh --- Install software necessary for a minimal system from the Arch Linux repositories.

# Copyright (C) 2019-2022 Marc Schlienger <marc.schlienger@posteo.de>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

source ./functions.sh

###############################################################################
#category Accessories


###############################################################################
#category Development


###############################################################################
#category Education


###############################################################################
#category Fonts


###############################################################################
#category Games


###############################################################################
category Graphics
pkgs=(
nitrogen
scrot
sxiv
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
category "Internet and Network"
pkgs=(
#neomutt
#isync
#msmtp
#abook
)


###############################################################################
category Multimedia
pkgs=(
cmus
)


###############################################################################
category Office
pkgs=(
#khal
#khard
#vdirsyncer
mupdf
)


###############################################################################
category Other
pkgs=(
newsboat
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
#category Research


###############################################################################
category System
pkgs=(
arandr
dunst  
ffmpegthumbnailer
notify-osd
lxappearance 
picom
qt5ct
xdo
xdotool
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
category Themes
pkgs=(
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
#category "Zipping apps"

