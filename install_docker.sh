#! /bin/bash 

sudo apt update
url -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - &&\
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
sudo apt update &&\
sudo apt install docker-ce docker-ce-cli containerd.io 
# add the current user to the docker group
sudo usermod -aG docker ${USER}