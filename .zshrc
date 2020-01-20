# -------- oh-my-zsh stuff


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"


# instead of using a ZSH theme, use promptline:
# https://github.com/edkolev/promptline.vim
# source $HOME/.promptline.sh

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
plugins=(git ssh-agent)

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

source /etc/environment

# high precedence PATH elements (element:$PATH)
PATH=$HOME/.bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/.npm-packages/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH
PATH=/usr/lib/ccache:$PATH

# low precedence PATH elements ($PATH:element)
PATH=$PATH:/snap/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/sbin

export PATH

# i love vim
# vimpager can be found at: https://github.com/rkitover/vimpager
export EDITOR="/usr/bin/vim"
export PAGER="vimpager"
export MANPAGER="vimpager"

export TERM=xterm-256color

if hash nvim; then
	alias vim="nvim"
fi

if hash exa; then
	alias ls="exa"
fi

if hash bat; then
	alias cat="bat"
fi

if hash rg; then
	alias grep="rg"
fi

if hash fd; then
	alias find="fd"
fi

alias dc='cd'
alias no='ls'
alias on='ls'

# function to add local npm binaries to $PATH
npm_add_local_bin_to_path()
{
	export PATH=$PATH:./node_modules/.bin
}

# tell QT5 how to find its theme
export QT_QPA_PLATFORMTHEME="qt5ct"

# set GPG_TTY so pinentry-tty will work
export GPG_TTY=$(tty)

# hack: setting GCC_COLORS fixes ccache issue where colors are stripped
# https://github.com/ccache/ccache/issues/224
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"
