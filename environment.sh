# Path
setpath() {
  xIFS=$IFS; IFS=":"; var=$1;
  shift; eval "$var=\$*";
  IFS=$xIFS; unset var xIFS;
}

setpath PATH \
  "$HOME/bin" \
  "$HOME/opt/p4v-2017.1.1491634/bin" \
  "/opt/terraform" \
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
