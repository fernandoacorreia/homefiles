" Reload configuration and run :PlugInstall to install plugins.

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" fzf
Plug '~/homefiles/vendor/fzf'
Plug '~/homefiles/vendor/fzf.vim'

" Initialize plugin system
call plug#end()
