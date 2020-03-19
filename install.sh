#! /bin/bash

# This scripts install the source-list, all packages in the packagelist and put the dotfiles to the right place

# make source list with and without proxy
echo "install source list"
sudo ./install_sourcelist.sh

# install packages with aptitude
# update aptitude
sudo apt-get update
# install all packages
echo "installing packages"
sudo apt-get install -y $(../packagelist)

# install home directory
cp -r home/.config home/.scripts .bashrc ${HOME}

# install docker
if [[ "$*" == --docker ]]; then
    ./install_docker.sh
fi

# install kubernetes
# TODO

# reboot
sudo systemctl reboot