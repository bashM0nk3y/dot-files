version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
nmap <silent>  :wincmd h
nmap <silent> <NL> :wincmd j
nmap <silent>  :wincmd k
nmap <silent>  :wincmd l
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
map <S-Insert> <MiddleMouse>
let &cpo=s:cpo_save
unlet s:cpo_save
syntax on
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim_backup
set complete=.,w,b,u,U,t,i,d
set diffopt=filler,iwhite
set directory=~/.cache/vim/swap//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix
set guifont=Ubuntu\ Mono\ 11
set guioptions=aegimLt
set helplang=en
set hidden
set history=200
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set mouse=a
set ruler
set scrolloff=5
set shell=bash
set shiftwidth=4
set sidescrolloff=5
set smartindent
set smarttab
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg
set termencoding=utf-8
set updatecount=100
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
set wildmenu
set wildmode=longest:full
set window=40
" vim: set ft=vim :
colors elflord
set nospell
