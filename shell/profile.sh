# Import secrets
if test -n "$(find ~/secrets -maxdepth 1 -name '*.sh' -print -quit)"  # https://stackoverflow.com/a/7702334
then
  for f in ~/secrets/*.sh; do source $f; done
fi

source $HOME/homefiles/shell/environment.sh
source $HOME/homefiles/shell/aliases.sh
source $HOME/homefiles/shell/less-termcap.sh
