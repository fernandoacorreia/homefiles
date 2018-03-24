" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
" Source: https://github.com/junegunn/fzf.vim#advanced-customization<Paste>
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)
