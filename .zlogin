# Set up my keychain 
preexec () {     
    [ -f .keychain/`hostname`-sh ] && . ~/.keychain/`hostname`-sh 
}  

keychain -q
