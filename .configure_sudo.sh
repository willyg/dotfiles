#!/bin/sh

USERNAME=$1

if [ ! -d /etc/systemd/system/getty@tty1.service.d/ ]; then
    echo "Set tty1 to autologin"
    mkdir -p /etc/systemd/system/getty@tty1.service.d/

    cat <<EOF > /etc/systemd/system/getty@tty1.service.d/override.conf
[Service]
Type=simple
ExecStart=
ExecStart=-/usr/sbin/agetty --autologin $USERNAME --noclear %I $TERM
EOF
fi

if ! grep -q timeout=1 /boot/grub/grub.cfg; then
    echo 'Setting GRUB timeout to 1 second'
    sed -i 's/timeout=5/timeout=1/g' /boot/grub/grub.cfg
fi
