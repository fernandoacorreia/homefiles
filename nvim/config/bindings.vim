" Use spacebar as leader and ; as secondary-leader
" Required before loading plugins!
let g:mapleader="\<Space>"
let g:maplocalleader=';'

" Disable rarely-used keys.
nnoremap <F1> <nop> " :help
nnoremap Q <nop> " ex mode
nnoremap K <nop> " man page

" fzf: list files
nnoremap <silent> <Leader><Space> :Files<CR>

" fzf: list buffers
nnoremap <silent> <Leader>b :Buffers<CR>

" Ctrl+L clears search hightlighting.
nnoremap <C-L> :noh<CR><C-L>

" CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

" Remap <CR> for better undo
" (https://github.com/tpope/vim-sensible/issues/28#issuecomment-12926100)
inoremap <CR> <C-G>u<CR>

" Quickly traverse lists.
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

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

" Shortcuts to open and close local diff.
nnoremap <Leader>do :DiffOrig<cr>
nnoremap <leader>dc :q<cr>:diffoff<cr>:exe "norm! ".g:diffline."G"<cr>

" Change line numbering
nnoremap <expr> <C-N> CycleLNum()

" Quickfix window
nnoremap <leader>q :copen<CR>
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
