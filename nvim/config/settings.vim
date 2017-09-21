" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Switch syntax highlighting on.
syntax enable

" Show line numbers.
set number

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

" Ctrl+L clears search hightlighting.
nnoremap <C-L> :noh<CR><C-L>

" Smart case-sensitive search.
" With both ignorecase and smartcase turned on, a search is case-insensitive
" if you enter the search string in ALL lower case.
set ignorecase
set smartcase

" Show (partial) command in the last line of the screen.
set showcmd

" CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

" Remap <CR> for better undo
" (https://github.com/tpope/vim-sensible/issues/28#issuecomment-12926100)
inoremap <CR> <C-G>u<CR>

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

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

" Disable rarely-used keys.
nnoremap <F1> <nop> " :help
nnoremap Q <nop> " ex mode
nnoremap K <nop> " man page

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Quickly traverse lists.
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

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
set wildignore+=**/node_modules/*,**/bower_components/*,**/dist/*
set wildignore+=target/*,project/target/*

" Set color scheme.
" http://bytefluent.com/vivify/
set background=dark
colorscheme jellybeans " https://github.com/fernandoacorreia/jellybeans.vim

" Highlight trailing/leading whitespace.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Highlight character width boundary.
let &colorcolumn=join(range(101,999),",")
highlight ColorColumn ctermbg=235 guibg=#23241F

" Treat .md files as markdown.
au BufRead,BufNewFile *.md set filetype=markdown
