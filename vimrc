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

" system clipboard
set clipboard=unnamed

" ----------------------------------------------------------------------
"  plug in settings
" ----------------------------------------------------------------------

" look and feel
let g:seoul256_background = 233
colorscheme seoul256

" vim-flag
set laststatus=2
set showtabline=2
set guioptions-=e

" dispatch
inoremap <F5> <esc>:update<cr>:Make<cr>
nnoremap <F5> :update<cr>:Make<cr>

inoremap <F6> <esc>:update<cr>:Dispatch!<cr>
nnoremap <F6> :update<cr>:Dispatch!<cr>

inoremap <F10> <esc>:Copen<cr>
nnoremap <F10> :Copen<cr>

" javascript & jsx
let g:javascript_enable_domhtmlcss = 1
let g:jsx_ext_required = 0
autocmd FileType javascript setlocal makeprg=flow
autocmd FileType javascript let b:dispatch = 'webpack'

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

" ctrlsf
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
" inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" markdown, vim-flavored-markdown
autocmd FileType markdown,text,txt setlocal tw=78 linebreak nolist
augroup markdown
  autocmd!
  autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
