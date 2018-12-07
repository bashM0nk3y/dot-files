syntax enable
set background=dark
set ruler                     " show the line number on the bar
"set more                      " use more prompt
set autoread                  " watch for file changes
"set number                    " line numbers
set number relativenumber       " hybrid fixed/relative line numbers

" Dynamic line number toggle
" switches between regular line numbers and relative line numbers
" normal mode uses hybrid relative numbers
" insert mode uses normal line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set number relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"set mouse=a                     "enable mouse

set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set smartindent                 " auto/smart indent
set smarttab                  " tab and backspace are smart
set expandtab
set shiftwidth=4
set softtabstop=4
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=1               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,t,i,d    " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set shell=bash
set fileformats=unix
set ff=unix
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins

set path+=$HOME/**

set wildmenu                  " menu has tab completion
"set wildmode=longest:full

let localleader=','             " <leader> == ,
set laststatus=2

set modeline                    " Always read modeline stuff from the bottom
                                " of files.

set winminheight=0          " Allow window split borders to touch.
set winminwidth=0

"  searching
set incsearch                 " incremental search
set ignorecase smartcase      " search ignoring case unless caps are used
set hlsearch                  " highlight the search
"set showmatch                 " show matching bracket
let g:loaded_matchparen=1     " DONT show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

"  backup
set backup
set backupdir=~/.vim_backup
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
"set viminfo='100,f1

" no spell checking
set nospell

" Don't create backup files when editing in these locations.
set backupskip=/tmp/*,~/tmp/*

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Function to toggle line numbers
" :set nonumber no longer works after messing with relativenumber
function! ToggleNumber()
    set number!
    set relativenumber!
endfunc

" MAPPINGS
" 'Y' yanks from cursor to eol intead of yanking entire line like 'yy'
nnoremap Y y$

" remap j and k to scroll by visual lines
"nnoremap j gj
"nnoremap k gk

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Space for command line mode
nnoremap <Space> :

"nnoremap <S-Right> :tabn<cr>
"nnoremap <S-Left> :tabp<cr>

"split window vertically (shortcut)
nnoremap " <C-w>v

"vertical split window resizing
nnoremap <S-Right> <C-w>>
nnoremap <S-Left> <C-w><
"nnoremap < <c-w><
"nnoremap > <c-w>>

"horizontal split window resizing
nnoremap <S-Up> <C-w>+
nnoremap <S-Down> <C-w>-
"nnoremap + <c-w>+
"nnoremap - <c-w>-

" keeps visual block selected after changing indention
vmap > >gv
vmap < <gv

" ctrl+n to toggle line numbers
" doesn't break dynamic relative/nonrelative functionality
nnoremap <c-n> :call ToggleNumber()<cr>

" Read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf<
