# Git
alias gg='git grep'
alias gpu='git push -u origin HEAD'
alias gpf='git push -f origin HEAD'

# Color in diff and grep
alias diff="colordiff"
alias grep="grep --color=always"

# Domino development
alias c1='cd $HOME/projects/domino'
alias c2='cd $HOME/projects/model-metadata-registry'
alias sdc='sbt domino/test:compile domino/it:compile'
alias snr='sbt nucleus/run'
alias ser='sbt executor/run'
alias sbt-debug="/usr/bin/sbt -mem 4000 -jvm-debug 9997"
alias domino-nucleus="/usr/bin/sbt -mem 4000 -jvm-debug 9998 -shell 'project nucleus' compile shell"
alias domino-executor="/usr/bin/sbt -mem 4000 -jvm-debug 9999 -shell 'project executor' compile shell"

# Kubernetes
alias k='kubectl'

# Clipboard
alias clipboard='xclip -sel clip'

# Override default git aliases
alias gfa='git fetch --all --tags --prune'
