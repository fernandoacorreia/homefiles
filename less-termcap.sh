# Colors for less binary for displaying man pages.
#
# Source: https://serverfault.com/a/169788/86288
#
# Color reference: https://misc.flogisoft.com/bash/tip_colors_and_formatting

export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)               # begin blinking
export LESS_TERMCAP_md=$(tput bold; tput setaf 6)               # begin bold
export LESS_TERMCAP_me=$(tput sgr0)                             # end mode
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # begin standout-mode - info box
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)                  # end standout-mode
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)    # begin underline
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)                  # end underline
export LESS_TERMCAP_mr=$(tput rev)                              # Start reverse mode
export LESS_TERMCAP_mh=$(tput dim)                              # Start half bright mode
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)
