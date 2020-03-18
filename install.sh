#! /bin/bash

# This scripts install the source-list, all packages in the packagelist and put the dotfiles to the right place

# make source list with and without proxy
sudo ./install_sourcelist.sh

# install packages with aptitude
# update aptitude
sudo apt-get update
# install all packages
sudo apt-get install $(../packagelist)

# install home directory
cp -r home/* ${HOME}

# install docker
if [[ "$*" == --docker ]]; then
    ./install_docker.sh
fi

# install kubernetes
# TODO

# reboot
sudo systemctl reboot