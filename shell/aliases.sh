# Git
alias gg='git grep'

# Color in diff and grep
alias diff="colordiff"
alias grep="grep --color=always"

# Domino development
alias c1='cd $HOME/projects/domino'
alias sdc='sbt domino/it:compile'
alias snr='sbt nucleus/run'
alias ser='sbt executor/run'
alias sbt-debug="/usr/bin/sbt -mem 4000 -jvm-debug 9997"
alias domino-nucleus="/usr/bin/sbt -mem 4000 -jvm-debug 9998 -shell 'project nucleus' compile shell"
alias domino-executor="/usr/bin/sbt -mem 4000 -jvm-debug 9999 -shell 'project executor' compile shell"

sshdom() {
  ssh -i $HOME/.ssh/domino-test.pem ubuntu@$1
}

# Kubernetes
alias kc='kubectl'
