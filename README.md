# Notleshes' Dotfiles

This repo contains all of my non-sensitive config files. It is meant to share
this config between multiple Arch Linux installations. It generally works for
other distros as well.

## Using this repo

I usually initialize a new Arch installation with my dotfiles by doing:

```sh
cd $HOME
git clone git@github.com:notlesh/dotfiles
mv dotfiles/.* ./
rm -r dotfiles
```

This results in my homedir being the root of this repository.

## Theme config

### GTK

TODO

### Qt

TODO

### Cursor

I'm currently using Bibata: https://github.com/ful1e5/Bibata_Cursor.

It seems this needs to be configured in 3 ways:

* in `.config/gtk-3.0/settings.ini` (handled in this repo)
* in `.icons/default/index.theme` (handled in this repo)
* by running `gsettings set org.gnome.desktop.interface cursor-theme Bibata-Modern-Ice`

