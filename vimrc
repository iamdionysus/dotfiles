execute pathogen#infect('bundle/{}', '~/dotfiles/vim/bundle/{}')

" look and feel
colorscheme monokai

" basic settings
syntax on
set autoindent
set noswapfile
set smartindent
set lazyredraw
set laststatus=2
set showcmd
set backspace=indent,eol,start
set whichwrap=b,s
set shortmess=aIT
set hlsearch " CTRL-L / CTRL-R W
set incsearch
set hidden
set ignorecase smartcase
set wildmenu
set tabstop=2
set shiftwidth=2
set expandtab smarttab
set scrolloff=5
set encoding=utf-8
set nojoinspaces
set autoread
set clipboard=unnamed
set nocursorline
set ruler

" <leader> as space
let mapleader = ' '
let maplocalleader = ' '

" escape
inoremap jj <Esc>l
inoremap kk <Esc>l
" xnoremap jk <Esc>
" cnoremap jk <C-c>

" move in insert mode
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

" move buffer
nnoremap <Leader>n :bnext<cr>
nnoremap <Leader>p :bprevious<cr>

" move lines
nnoremap <silent> <M-k> :move-2<cr>
nnoremap <silent> <M-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <M-k> :move-2<cr>gv
xnoremap <silent> <M-j> :move'>+<cr>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv

" qq to record, Q to replay
nmap Q @q

" circular windows navigation 
nnoremap <tab> <c-w>w

" save
inoremap <C-s> <esc>:update<cr>
nnoremap <C-s> :update<cr>

" quit
inoremap <C-q> <esc>:q<cr>
nnoremap <C-q>     :q<cr>
vnoremap <C-q>     <esc>
nnoremap <Leader>q :q<cr>

" clear the highlighting
nnoremap <silent> <C-L> :nohlsearch<CR>

" vim-easy-align
xmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" NERD Tree shortcuts
inoremap <F10> <esc>:NERDTreeToggle<cr>
nnoremap <F10> :NERDTreeToggle<cr>

" vim-fugitive
nmap <Leader>g :Gstatus<cr>gg<c-n>

" ruby
autocmd FileType ruby let b:dispatch = 'bundle exec rspec %:p'
nnoremap <Leader>d :Dispatch<cr>

"clojure
autocmd FileType clojure RainbowParentheses
autocmd FileType clojure xnoremap <Leader><Leader> :Eval<CR>
autocmd FileType clojure nnoremap <Leader><Leader> :Eval<CR>
let g:paredit_smartjump = 1
