# Path
setpath() {
  xIFS=$IFS; IFS=":"; var=$1;
  shift; eval "$var=\$*";
  IFS=$xIFS; unset var xIFS;
}

setpath PATH \
  "$HOME/bin" \
  "$HOME/.cargo/bin" \
  "$HOME/opt/p4v-2017.2.1535556/bin" \
  "$PATH" ;

# Editor
export VISUAL=/usr/bin/nvim
export EDITOR="$VISUAL"

# Java
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

# sbt
export SBT_OPTS="-Xmx4g"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# fzf
export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

# less command options
export LESS='--quit-if-one-screen --no-init --RAW-CONTROL-CHARS'
