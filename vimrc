execute pathogen#infect('~/src/vim/bundle/{}')

" <leader> as space
let mapleader = ' '
let maplocalleader = ' '

" move lines
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap > >gv " indent
xnoremap < <gv " dedent

" circular windows navigation 
nnoremap <tab> <c-w>w

" save
inoremap <C-s> <esc>:update<cr>
nnoremap <C-s> :update<cr>

" kill buffer without closing window
nnoremap <Leader>k :buffer#\|bdelete#<cr> 

" ----------------------------------------------------------------------
"  plug in settings
" ----------------------------------------------------------------------

" look and feel
let g:seoul256_background = 233
colorscheme seoul256

" dispatch
inoremap <F5> <esc>:update<cr>:Dispatch<cr>
nnoremap <F5> :update<cr>:Dispatch<cr>

" ack.vim
if executable('pt')
  let g:ackprg = 'pt --nogroup --nocolor'
endif

" vim-easy-align
xmap <Enter> <Plug>(EasyAlign)

" vim-fugitive
nmap <Leader>s :Gstatus<cr>gg<c-n>
nnoremap <Leader>d :Gdiff<cr>
nnoremap <Leader>p :Gpush<cr>
nnoremap <Leader>g :Gcommit -a<cr>

" ruby
autocmd FileType ruby let b:dispatch = 'bundle exec rake test'
autocmd FileType ruby setlocal textwidth=78

autocmd FileType markdown,text,txt setlocal tw=78 linebreak nolist

"clojure
autocmd FileType clojure RainbowParentheses
autocmd FileType clojure xnoremap <Leader><Leader> :Eval<CR>
autocmd FileType clojure nnoremap <Leader><Leader> :Eval<CR>
let g:clojure_align_subforms = 1
let g:clojure_align_multiline_strings = 1

" let g:paredit_smartjump = 1

" open-browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" ctrlsf
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
" inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" vim-flavored-amrkdown
augroup markdown
  autocmd!
  autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
