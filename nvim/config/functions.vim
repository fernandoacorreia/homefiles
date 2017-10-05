" Cycles between normal, relative, and no line numbering.
" Credit: Erik Falor - http://unnovative.net
function! CycleLNum()
  if &l:rnu
    setlocal nonu nornu
  elseif &l:nu
    setlocal nu rnu
  else
    setlocal nu
  endif
  " sometimes (like in op-pending mode) the redraw doesn't happen
  " automatically
  redraw
  " do nothing, even in op-pending mode
  return ""
endfunc
