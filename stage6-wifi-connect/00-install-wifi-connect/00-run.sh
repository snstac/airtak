#!/bin/bash -e
#
# Copyright 2023 Sensors & Signals LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

install -v -m 755 files/run_wifi-connect.sh	"${ROOTFS_DIR}/usr/local/sbin/"
install -v -m 600 files/wifi-connect.service	"${ROOTFS_DIR}/etc/systemd/system/"

install -v -m 755 files/raspbian-install.sh	"${ROOTFS_DIR}/usr/local/sbin/"

mkdir -p "${ROOTFS_DIR}/usr/src/wifi-connect"
install -v -m 644 files/wifi-connect-v4.11.1-linux-aarch64.zip "${ROOTFS_DIR}/usr/src/wifi-connect/"