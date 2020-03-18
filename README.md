# Corentin-luc-artaud Dotfiles

this repository contains my needed dotfiles for a fast setup of a debian based system with:
- i3wm
- i3-lock
- dmenu
- compton
- sakura
- gotop
- ranger
- nmtui
- alsa/pulsaudio


## installation

run `./install` to install dot files and aptitude source.list. You can specify the `proxy` variable if you wants to use a proxy.  

```sh
proxy=127.0.0.1:8080 ./install
```

you can pass the flag `--docker` to install docker.  

At the end, this script reboot the computer.
