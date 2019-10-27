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

CARGO_PACKAGES="du-dust eva chars"

cargo install $CARGO_PACKAGES
