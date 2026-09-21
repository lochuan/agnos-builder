#!/bin/bash -e

# for all the non-essential nice to haves
# (slimmed: dev/diag tools dropped; runtime-needed avahi/adb/dnsmasq kept)

apt-get update && apt-get install -y --no-install-recommends \
  dnsmasq \
  avahi-daemon \
  adb \
  avahi-utils

# color prompt
sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/g' /home/comma/.bashrc
