" vim-plug
call plug#begin('~/.vim/plugged')
let g:plug_url_format = 'git@github.com:%s.git' " use ssh instead of https

" edit
Plug 'freitass/todo.txt-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rsi'
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
" Plug 'jceb/vim-orgmode'
" Plug 'tpope/vim-speeddating'

" git
Plug 'tpope/vim-fugitive' 

" lang
Plug 'tpope/vim-dispatch'
Plug 'derekwyatt/vim-scala'
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'
Plug 'gabrielelana/vim-markdown'

" clojure
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'iamdionysus/paredit', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
" Plug 'guns/vim-sexp'

" ruby
Plug 'tpope/vim-bundler'

" browsing
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'jeetsukumaran/vim-buffergator'
Plug 'tpope/vim-unimpaired'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/open-browser.vim'

" look and feel
Plug 'junegunn/seoul256.vim'

call plug#end()

" ----------------------------------------------------------------------
"  sensible
" ----------------------------------------------------------------------
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
set hlsearch 
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
set autochdir " change the current directory automatically based on file
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" <leader> as space
let mapleader = ' '
let maplocalleader = ' '

" escape
inoremap jk <Esc>l
cnoremap jk <C-c>
inoremap <silent> <C-g> <Esc>:nohlsearch<CR>
nnoremap <silent> <C-g> <Esc>:nohlsearch<CR>
xnoremap <silent> <C-g> <Esc>:nohlsearch<CR>
cnoremap <silent> <C-g> <C-c>:nohlsearch<CR>

" move in insert mode
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

" move lines
nnoremap <silent> <M-k> :move-2<cr>
nnoremap <silent> <M-j> :move+<cr>
xnoremap <silent> <M-k> :move-2<cr>gv
xnoremap <silent> <M-j> :move'>+<cr>gv
xnoremap > >gv " indent
xnoremap < <gv " dedent

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

" quickfix
nnoremap <Leader>c :cc<cr>


" ----------------------------------------------------------------------
"  vim plug settings
" ----------------------------------------------------------------------

" look and feel
let g:seoul256_background = 233
colorscheme seoul256

" dispatch
inoremap <F6> <esc>:update<cr>:Dispatch<cr>
nnoremap <F6> :update<cr>:Dispatch<cr>

" ack.vim
if executable('pt')
  let g:ackprg = 'pt --nogroup --nocolor'
endif

" vim-easy-align
xmap <Enter> <Plug>(EasyAlign)

" NERD Tree shortcuts
inoremap <F10> <esc>:NERDTreeToggle<cr>
nnoremap <F10> :NERDTreeToggle<cr>

" vim-fugitive
nmap <Leader>g :Gstatus<cr>gg<c-n>
nnoremap <Leader>d :Gdiff<cr>
nnoremap <Leader>p :Gpush<cr>
nnoremap <Leader>t :Gcommit -a<cr>

" CtrlP
nnoremap <Leader>b :CtrlPBuffer<cr>
nnoremap <Leader>r :CtrlPMRU<cr>

" ruby
autocmd FileType ruby let b:dispatch = 'bundle exec rspec %:p'

"clojure
autocmd FileType clojure RainbowParentheses
autocmd FileType clojure xnoremap <Leader><Leader> :Eval<CR>
autocmd FileType clojure nnoremap <Leader><Leader> :Eval<CR>

" paredit-forward-slurp-sexp
inoremap <C-l> <esc>ma:<C-U>call PareditSmartJumpClosing(0)<cr>:call PareditMoveRight()<cr>`al
nnoremap <C-l> ma:<C-U>call PareditSmartJumpClosing(0)<cr>:call PareditMoveRight()<cr>`a

" paredit-forward-barf-sexp
inoremap <C-h> <esc>ma:<C-U>call PareditSmartJumpClosing(0)<cr>:call PareditMoveLeft()<cr>`al
nnoremap <C-h> ma:<C-U>call PareditSmartJumpClosing(0)<cr>:call PareditMoveLeft()<cr>`a

" paredit-backward-slurp-sexp
inoremap <M-h> <esc>ma:<C-U>call PareditSmartJumpOpening(0)<cr>:call PareditMoveLeft()<cr>`al
nnoremap <M-h> ma:<C-U>call PareditSmartJumpOpening(0)<cr>:call PareditMoveLeft()<cr>`a

" paredit-backward-barf-sexp
inoremap <M-l> <esc>ma:<C-U>call PareditSmartJumpOpening(0)<cr>:call PareditMoveRight()<cr>`al
nnoremap <M-l> ma:<C-U>call PareditSmartJumpOpening(0)<cr>:call PareditMoveRight()<cr>`a

let g:paredit_smartjump = 1

" open-browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

