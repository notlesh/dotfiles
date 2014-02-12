# -------- oh-my-zsh stuff


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="gallois"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# omg, stop the corrections
unsetopt correct_all

# -------- end oh-my-zsh stuff

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory extendedglob nomatch notify incappendhistory extendedhistory 
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'm:{a-z}={A-Z}' 'r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/stephen/.zshrc'
# End of lines added by compinstall

# no rogue bangs
setopt histverify

autoload -Uz compinit
compinit

# autoload -U promptinit
# promptinit
# prompt adam2

export PATH=$PATH:/home/stephen/.bin/:/sbin/:/usr/sbin/
export PATH=$PATH:/home/stephen/thinktank/bin/
export PATH=$PATH:/opt/android-sdk/tools/
export PATH=$PATH:/opt/android-sdk/platform-tools/
export PATH=$PATH:/opt/android-ndk/
export PATH=$PATH:/opt/nuvos/bin/
export PATH=$PATH:/opt/cxxtest/bin/

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export PRINTER="Canon_MX860_series_USB_1"
export MPD_HOST="127.0.0.1"
export MPD_PORT="6600"

export XDG_CONFIG_HOME="/home/stephen/.config"

# i love vim
export EDITOR="/usr/bin/vim"
# export PAGER="/usr/bin/vim -u /usr/share/vim/vim73/macros/less.vim"
# export MANPAGER="/usr/bin/vimmanpager"

# export ANT_ARGS="-logger nuvos.system.NuvosAntLogger"

export GWT_HOME="/opt/gwt"
export OPENOFFICE_HOME="/usr/lib/libreoffice"

# roller/tc
export ROLLER_SRC_DIR="/share/devel/tc/jni/"

export TERM=xterm-256color

alias cpu='cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq'
alias bat='cat /proc/acpi/battery/BAT0/*'
alias batwatch='watch cat /proc/acpi/battery/BAT0/*'
alias ls="ls --color"
alias lss="ls -l"
alias openoffice="soffice"
alias fs="df -h"
alias dc='cd'
alias no='ls'
alias on='ls'

# http://vim.wikia.com/wiki/Using_vim_as_a_man-page_viewer_under_Unix
export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
	-c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
	-c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
