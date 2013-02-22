# Set up my keychain 
preexec () {     
    [ -f .keychain/`hostname`-sh ] && . ~/.keychain/`hostname`-sh 
}  

alias agent="keychain -q ~/.ssh/id_dsa" 
alias kagent="keychain -k"  

agent 
