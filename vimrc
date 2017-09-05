" execute pathogen#infect()

" Change swp file location
set directory=~/src/vim/swp//

" qq to record, Q to replay
nnoremap Q @q

" <leader> as space
let mapleader = ' '
let maplocalleader = ' '


" circular windows navigation using tab
nnoremap <tab>   <c-w>w

" move lines
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap > >gv " indent
xnoremap < <gv " dedent

" save
" inoremap <C-s> <esc>:update<cr>
" nnoremap <C-s> :update<cr>

" system clipboard
set clipboard=unnamed

" change current working directory
nnoremap ,cd :cd %:p:h<CR>

" ----------------------------------------------------------------------
"  plug in settings
" ----------------------------------------------------------------------

" look and feel
let g:seoul256_background = 233
colorscheme seoul256

" undotree
inoremap <F2> <esc>:UndotreeToggle<cr>
nnoremap <F2> :UndotreeToggle<cr>

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
nnoremap <Leader>p :AsyncRun git push<cr>
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
