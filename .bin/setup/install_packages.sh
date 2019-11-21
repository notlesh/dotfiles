#!/bin/bash

# just gonna leave this here...
# https://www.wezm.net/technical/2019/10/useful-command-line-tools/

# headless packages
HEADLESS_PACKAGES="
neovim
powertop
cmake build-essential
keychain
virtualbox
python-pip
ctags
autofs
mutt
tmux
ssh
npm
resolvconf
smartmontools
irssi
ripgrep
jq
pkg-config
gron
syncthing
syncthing-gtk
cargo
pwgen
clangd
golang
"

# non-headless packages
NON_HEADLESS_PACKAGES="
fonts-hack
discord
libreoffice
xserver-xephyr
gimp
screenruler
kmag
gpick
scrot
"

# personal machines
PERSONAL_PACKAGES="
mpd
ncmpcpp
mpc
mumble
"

# for specific hardware
HARDWARE_PAKCAGES="
bluetooth 
blueman
nvme-cli
"

PACKAGES="$HEADLESS_PACKAGES $NON_HEADLESS_PACKAGES $PERSONAL_PACKAGES $HARDWARE_PAKCAGES"

sudo apt install $PACKAGES

# packages from specific PPAs
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty

CARGO_PACKAGES="du-dust eva chars mdcat watchexec fd-find"

cargo install $CARGO_PACKAGES

PIP_PACKAGES="http-prompt"

pip install $PIP_PACKAGES
