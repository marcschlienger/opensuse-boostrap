#!/bin/bash
set -e

# 400-gnome.sh --- Install the Gnome desktop environment.

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
pattern\:gnome_basic
pattern\:gnome_imaging
pattern\:gnome_internet
pattern\:gnome_multimedia
pattern\:gnome_office
pattern\:gnome_utilities
pattern\:gnome_yast
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done

