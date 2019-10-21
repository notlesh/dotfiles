#!/bin/sh
sudo apt install zsh

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mv ~/.zshrc.pre-oh-my-zsh .zshrc
