# Path
setpath() {
  xIFS=$IFS; IFS=":"; var=$1;
  shift; eval "$var=\$*";
  IFS=$xIFS; unset var xIFS;
}

setpath PATH \
  "$HOME/bin" \
  "$HOME/opt/bin" \
  "$HOME/.cargo/bin" \
  "$HOME/opt/p4v/bin" \
  "$PATH" ;

# Editor
export VISUAL=/usr/bin/nvim
export EDITOR="$VISUAL"

# Java
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

# sbt
export SBT_OPTS="-Xmx4g"

# fzf
export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

# less command options
export LESS='--quit-if-one-screen --no-init --RAW-CONTROL-CHARS'

# n (node, npm)
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
