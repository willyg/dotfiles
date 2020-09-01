#!/bin/sh

USERNAME=$1

mkdir -p /etc/systemd/system/getty@tty1.service.d/

cat <<EOF > /etc/systemd/system/getty@tty1.service.d/override.conf
[Service]
Type=simple
ExecStart=
ExecStart=-/usr/sbin/agetty --autologin $USERNAME --noclear %I $TERM
EOF
