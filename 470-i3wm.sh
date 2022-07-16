#!/bin/bash
set -e

# 470-i3wm.sh --- Install i3-gaps and related tools.

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

source ./functions.sh

pkgs=(
i3-gaps 
i3blocks 
i3lock 
i3status 
dmenu 
polybar
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done

