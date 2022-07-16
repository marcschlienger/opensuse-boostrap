#!/bin/bash
set -e

# 200-printer_and_scanner.sh --- Install printer and scanner related drivers and software.

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

sudo rpm -ihv --nodeps ./rmp/mfc9342cdwcupswrapper-1.1.4-0.i386.rpm

sudo rpm -ihv --nodeps ./rmp/brscan4-0.4.11-1.x86_64.rpm
sudo brsaneconfig4 -a name="Brother_MFC-9342CDW" model=MFC-9342CDW ip=192.168.178.23

sudo rpm -ihv --nodeps ./rmp/brscan-skey-0.3.1-2.x86_64.rpm
sudo systemctl enable brscan-skey.service

