#!/bin/sh

echo 'Start X on start'
grep -q startx ~/.profile || cat <<EOF >> .profile

if [[ -z "\$DISPLAY" ]] && [[ \$(tty) = /dev/tty1 ]]; then
    . startx
    logout
fi
EOF

echo 'Generate i3 config'
i3-config-wizard -m win
grep -q new_window ~/.config/i3/config || echo 'new_window 1pixel' >> ~/.config/i3/config

echo 'Set $TERM for ssh'
grep -q ssh ~/.bashrc || echo "alias ssh='TERM=xterm-256color ssh'" >> ~/.bashrc

echo 'Install vim-plug'
if [ ! -d "~/.vim" ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
vim +'PlugInstall --sync' +qa
