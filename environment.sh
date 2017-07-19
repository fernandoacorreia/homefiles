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

# sbt
export SBT_OPTS="-Xmx4g"
