if has('win32') || has('win64')
  let g:plug_threads = 8
endif

" vim-plug
call plug#begin('~/.vim/plugged')

" edit
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'

" git
Plug 'tpope/vim-fugitive' " this is not working under msys2

" clojure
Plug 'junegunn/rainbow_parentheses.vim'

" ruby
Plug 'thoughtbot/vim-rspec'

" lang
Plug 'derekwyatt/vim-scala'

" tmux
Plug 'tpope/vim-tbone'

" browsing
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'

" look and feel
Plug 'lsdr/monokai'

call plug#end()

" look and feel
colorscheme monokai

" basic settings
set autoindent
set noswapfile
set smartindent
set lazyredraw
set laststatus=2
set showcmd
set visualbell
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

" <leader> as space
let mapleader = ' '
let maplocalleader = ' '

" escape
inoremap jj <Esc>l
inoremap kk <Esc>l
" xnoremap jk <Esc>
" cnoremap jk <C-c>

" move one
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>l
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

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
inoremap <C-s> <C-o>:update<cr>
nnoremap <C-s> :update<cr>

" quit
inoremap <C-q> <esc>:q<cr>
nnoremap <C-q>     :q<cr>
vnoremap <C-q>     <esc>

nnoremap <Leader>q :q<cr>

" NERD Tree shortcuts
inoremap <F10> <esc>:NERDTreeToggle<cr>
nnoremap <F10> :NERDTreeToggle<cr>

" vim-fugitive
nmap <Leader>g :Gstatus<cr>gg<c-n>
"clojure
autocmd FileType clojure RainbowParentheses
