#!/bin/sh

if ! grep -q startx ~/.profile; then
    echo 'Start X on start'
    cat <<EOF >> ~/.profile

if [[ -z "\$DISPLAY" ]] && [[ \$(tty) = /dev/tty1 ]]; then
    . startx
    logout
fi
EOF
fi

if ! grep -q EDITOR ~/.profile; then
    echo 'Set vim as editor'
    echo 'export EDITOR=vim' >> ~/.profile
fi

if ! grep -q new_window ~/.config/i3/config; then
    echo 'Set i3 window to 1 pixel'
    echo 'new_window 1pixel' >> ~/.config/i3/config
fi

if ! grep -q ssh ~/.bashrc; then
    echo 'Set $TERM for ssh'
    echo "alias ssh='TERM=xterm-256color ssh'" >> ~/.bashrc
fi

if [ ! -d ~/.vim ]; then
    echo 'Install vim-plug'
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +'PlugInstall --sync' +qa
fi
