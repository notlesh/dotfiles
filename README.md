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

## Neovim

[Neovim](https://neovim.io) is my editor of choice and is a big part of this repo.

### Initialization

[Lazy](https://github.com/folke/lazy.nvim) is used to manage plugins. It is initialed in `init.vim`
and should automatically load as needed.

Execute `:Lazy` to bring up a menu showing status about plugins.

[Meson](https://github.com/williamboman/mason.nvim) is used for LSPs.

Run `:Meson` for a nice UI.

### Inspiration / Resources

https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/

## WM / DE (Hyprland)

I'm using [hyprland](https://hypr.land/) and friends as a Window Manager / Desktop Environment.

The main config for `hyprland` is broken up into a common part and individual files that import the
common configuration. This is all under `~/.config/hypr`. This repo is missing the standard config
file (`hyprland.conf`), which is intended to be created as a symlink.

Files:

```bash
hyprland_common.conf
hyprland_machine_a.conf # sources hyprland_common.conf
...
```

To set this up:

```bash
ln -s hyprland_machine_a.conf hyprland.conf
```

## Shell

I'm using a fairly minimal `zshell` setup with [starship](https://starship.rs/) for prompt theming
along with system-provided zsh plugins. Arch packages required:

```bash
sudo pacman -S zsh starship zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-history-substring-search
```

## Theme config

### GTK

TODO

### Qt

TODO

### Wallpaper rotating

I have a very crude rotating script at `.bin/hyprland_wallpaper_shuffle.sh` that rotates wallpapers
randomly from those found in `.config/backgrounds/*`.

This can be automated with `.config/systemd/user/hyprpaper-rotate.timer` by running:

```bash
systemctl --user daemon-reload
systemctl --user enable --now hyprpaper_rotate.timer
```

### Cursor

I'm currently using Bibata: https://github.com/ful1e5/Bibata_Cursor.

It seems this needs to be configured in 3 ways:

* in `.config/gtk-3.0/settings.ini` (handled in this repo)
* in `.icons/default/index.theme` (handled in this repo)
* by running `gsettings set org.gnome.desktop.interface cursor-theme Bibata-Modern-Ice`

