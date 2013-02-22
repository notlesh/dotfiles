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

autoload -U promptinit
promptinit
prompt adam2

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

export TERM=xterm-color

alias cpu='cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq'
alias bat='cat /proc/acpi/battery/BAT0/*'
alias batwatch='watch cat /proc/acpi/battery/BAT0/*'
alias ls="ls --color"
alias lss="ls -l"
alias openoffice="soffice"
alias fs="df -h"
alias devo="ssh -l stephen devo"
alias mythtail="tail -fn 50 /var/log/mythtv/mythbackend.log"
alias mvn='mvn-2.1'
alias dc='cd'
alias no='ls'
alias on='ls'

# http://vim.wikia.com/wiki/Using_vim_as_a_man-page_viewer_under_Unix
export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
	-c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
	-c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
