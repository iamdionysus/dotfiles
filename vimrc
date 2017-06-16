execute pathogen#infect('~/src/vim/bundle/{}')

" Change swp file location
set directory=~/src/vim/swp//

" Do this first to fix autocmd FileType not working on some case
syntax on

" qq to record, Q to replay
nnoremap Q @q

" <leader> as space
let mapleader = ' '
let maplocalleader = ' '


" circular windows navigation using tab
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" move lines
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap > >gv " indent
xnoremap < <gv " dedent

" save
inoremap <C-s> <esc>:update<cr>
nnoremap <C-s> :update<cr>

" kill buffer without closing window
nnoremap <Leader>k :buffer#\|bdelete#<cr>

" system clipboard
set clipboard=unnamed

" ----------------------------------------------------------------------
"  language settings
" ----------------------------------------------------------------------

" typescript
" autocmd FileType typescript setlocal makeprg=tsc

" javascript & jsx
" let g:javascript_enable_domhtmlcss = 1
" let g:jsx_ext_required = 0
" autocmd FileType javascript setlocal makeprg=flow
" autocmd FileType javascript let b:dispatch = 'webpack'

" ruby
autocmd FileType ruby setlocal makeprg=ruby\ %
autocmd FileType ruby let b:dispatch = 'bundle exec rake test'
autocmd FileType ruby setlocal textwidth=78

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

" undotree
inoremap <F2> <esc>:UndotreeToggle<cr>
nnoremap <F2> :UndotreeToggle<cr>

" dispatch
inoremap <F5> <esc>:update<cr>:Make<cr>
nnoremap <F5> :update<cr>:Make<cr>

inoremap <F6> <esc>:update<cr>:Dispatch!<cr>
nnoremap <F6> :update<cr>:Dispatch!<cr>

inoremap <F10> <esc>:Copen<cr>
nnoremap <F10> :Copen<cr>

" ack.vim
if executable('pt')
  let g:ackprg = 'pt --nogroup --nocolor'
endif

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" vim-fugitive
nmap <Leader>s :Gstatus<cr>gg<c-n>
nnoremap <Leader>d :Gdiff<cr>
nnoremap <Leader>p :Gpush<cr>
nnoremap <Leader>g :Gcommit -a<cr>

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
" autocmd FileType ghmarkdown,markdown,text,txt setlocal tw=78 linebreak nolist
" augroup markdown
"   autocmd!
"   autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
" augroup END

" projectionist
let g:projectionist_heuristics = {
\    "src/": {
\     "src/main/scala/*.scala": {
\       "type": "src",
\       "alternate": "src/test/scala/{}.scala"
\     },
\     "src/test/scala/*.scala": {
\       "type": "test",
\       "alternate": "src/main/scala/{}.scala"
\     }
\   }
\ }
