" vim-plug
call plug#begin('~/.vim/plugged')

" edit
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'

" git
" Plug 'tpope/vim-fugitive' " this is not working under msys2

" ruby
Plug 'thoughtbot/vim-rspec'

" tmux
Plug 'tpope/vim-tbone'

" look and feel

"  browsing
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

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
inoremap jk <Esc>
xnoremap jk <Esc>
cnoremap jk <C-c>

" move one
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>l
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

" move lines
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
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
nnoremap <Leader>Q :qa!<cr>

" <F10> NERD Tree
inoremap <F10> <esc>:NERDTreeToggle<cr>
nnoremap <F10> :NERDTreeToggle<cr>
