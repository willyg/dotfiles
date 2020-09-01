#!/bin/sh

cat <<EOF >> .profile

if [[ -z "\$DISPLAY" ]] && [[ \$(tty) = /dev/tty1 ]]; then
    . startx
    logout
fi
EOF
