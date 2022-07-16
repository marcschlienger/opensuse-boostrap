#!/bin/bash
set -e

# 550-st.sh --- install my build of the simple terminal (st)

# Copyright (C) 2022 Marc Schlienger <marc.schlienger@posteo.de>
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

. ./functions.sh

pkgs=(
git
libXft-devel
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done

[ -d ~/src/dmenu ] && rm -rf $HOME/src/dmenu
git clone https://github.com/marcschlienger/dmenu.git $HOME/src/dmenu
cd $HOME/src/dmenu
sudo make CC=cc clean install

