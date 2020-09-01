# Install git (run as root)

### Install Git and sudo
`apt install git sudo -y`

### Add user to sudo group
`usermod -aG sudo user`


# Setup (as user)

### Clone repo
```
git clone https://github.com/willyg/dotfiles
mv dotfiles/.git .
rm dotfiles/ -rf
git reset --hard master
```

### Install packages
`sudo bash .install.sh`

### Configure system
```
bash .configure.sh
sudo bash .configure_sudo.sh $USER
```
