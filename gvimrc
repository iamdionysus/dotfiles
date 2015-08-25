let $LANG = 'en_US'
set guioptions-=m "menubar
set guioptions-=T "tool bar
set guioptions-=r "right scroll bar
set guioptions-=L "left scroll bar
set anti enc=utf-8
set guifont=Source_Code_Pro:h11

" for vim-plug to use thread in windows
let g:plug_threads = 4

" initial position and size
set lines=999
set columns=82
winpos 0 0
nnoremap <leader>m :call MaximizeWindowLengthToggle()<cr>

let g:window_length_is_maximized = 0

function! MaximizeWindowLengthToggle()
  if g:window_length_is_maximized
    let g:window_length_is_maximized = 0
    set columns=82
  else
    let g:window_length_is_maximized = 1
    set columns=999
  endif
endfunction


