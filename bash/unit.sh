export PS1="\[\033[3;32m\]\u\[\033[m\]@\[\033[4;33m\]\H\[\033[m\] \[\033[2;34m\]\$(pwd)\[\033[m\]\$(__git_ps1 '\[\033[2;32m\] in \[\033[m\]\[\033[4;36m\]%s\[\033[m\]')\n\[\033[5;36m\]▶\[\033[m\] "
setterm -cursor off
export PATH="$PATH:~/bin/frameworks/flutter/bin:~/p/binaries:/snap/bin:~/sys/p/src/vm"
alias bd="base64 -d <<<"
export EDITOR=nano
HISTFILE=~/.history_bash
HISTSIZE=-1
HISTFILESIZE=-1

cd sys/k 2>/dev/null

function vsh {
ssh -X pkv@$(iprovider $1)
}

. ~/sys/p/src/bash/editors.sh
. ~/sys/p/src/bash/k8.sh
. ~/sys/p/src/bash/vmachines.sh


