#!/bin/sh

# TERM
apt install xorg nodm rxvt-unicode-256color i3 fonts-inconsolata

# Tools
apt install vim tmux curl net-tools

# For Virtualbox guest install
apt install linux-headers-amd64 linux-headers-$(uname -r) make
