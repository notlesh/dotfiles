# load plugins

# Arch contains all of these under /usr/share/zsh
if [ -f "/usr/share/zsh/" ]; then
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
else
	# Ubuntu contains two of them, we'll expect the 3rd under ~/dev/vendor
	source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source /home/stephen/dev/vendor/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

# use starship for theming
eval "$(starship init zsh)"

# completion magic
# ----------------
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # Case insensitive
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"  # Colored completions

# cycle through history using up and down arrows
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

eval "$(zoxide init zsh)"

export GPG_TTY=$(tty)
