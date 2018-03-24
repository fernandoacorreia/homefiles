" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Switch syntax highlighting on.
syntax enable

" Show line numbers.
set number relativenumber

" Show cursor position.
set ruler

" Show the status line all the time.
set laststatus=2

" Show leader key on status line (http://stackoverflow.com/a/8160809/376366).
set showcmd

" Set mapping and key code delays.
set timeout timeoutlen=1000 ttimeoutlen=100

" Incremental search.
set incsearch

" Hightlight search.
set hlsearch

" Smart case-sensitive search.
" With both ignorecase and smartcase turned on, a search is case-insensitive
" if you enter the search string in ALL lower case.
set ignorecase
set smartcase

" Show (partial) command in the last line of the screen.
set showcmd

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

" Provide context by keeping a scroll offset.
set scrolloff=3

" Configure backup files.
silent !mkdir -p $HOME/.local/share/nvim/backup
set backupdir=$HOME/.local/share/nvim/backup
set backup
set backupext=.bak

" Persistent undo.
set undofile

" Autosave.
set nohidden " Avoid unsaved buffers.
set autoread " Keep buffers up-to-date.
set autowriteall " Automatically save buffers.
au FocusLost * silent! wa " Save on lost focus.
let g:auto_save = 1 " enable AutoSave on Vim startup (vim-auto-save plugin)
let g:auto_save_silent = 1 " do not display the auto-save notification (vim-auto-save plugin)

" Show current mode.
set showmode

" Default to global replace.
set gdefault

" Tab completion similar to shell.
" With this set, the first Tab press (or whatever your wildchar is set to)
" will expand a filename or command in command mode to the longest common
" string it can, and a second press will display a list of all possible
" completions above the command line.
set wildmode=longest,list

" Enhanced command line completion.
set wildmenu

" Remove toolbar.
:set guioptions-=T

" Show whitespace.
set list listchars=tab:»·,trail:·

" Ignore files.
set wildignore+=**/node_modules/*,**/bower_components/*,**/dist/* " JavaScript
set wildignore+=target/*,project/target/* " Scala

" Set color scheme.
" http://bytefluent.com/vivify/
set background=dark
colorscheme jellybeans " https://github.com/fernandoacorreia/jellybeans.vim

" Highlight trailing/leading whitespace.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Display a visual indicator for lines that are too wide.
highlight ColorColumn ctermbg=238 " See http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
let g:EditorConfig_max_line_indicator = "exceeding"

" Treat .md files as markdown.
au BufRead,BufNewFile *.md set filetype=markdown

" Clipboard integration
set clipboard=unnamedplus

" Highlight cursor line
" Color names: http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
hi CursorLine cterm=NONE ctermbg=235
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END
