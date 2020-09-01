# Install git (run as root)

### Install Git and sudo
`apt install git sudo -y`

### Add user to sudo group
`usermod -aG sudo user`


# Setup (as user)

### Clone repo
`git clone git@github.com:willyg/dotfiles.git`

### Install packages
`sudo bash .install.sh`
