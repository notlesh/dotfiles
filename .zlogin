# Set up my keychain 
preexec () {     
    [ -f .keychain/`hostname`-sh ] && . ~/.keychain/`hostname`-sh 
}  

alias agent="keychain"
alias kagent="keychain -k"  

agent 
