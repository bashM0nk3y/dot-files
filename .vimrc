"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

let mapleader=' '

" Some basics..

    set nocompatible                " vim, not vi
    syntax enable
    set background=dark
    set ruler                       " show the line number on the bar
    "set more                        " use more prompt
    set autoread                    " watch for file changes


" Misc. configurations

    set ttyfast                   " we have a fast terminal
    set showmode
    set showcmd
    set smartindent               " auto/smart indent
    set smarttab                  " tab and backspace are smart
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    set scrolloff=5               " keep at least 5 lines above/below
    set sidescrolloff=5           " keep at least 5 lines left/right
    set hidden
    set noautowrite               " don't automagically write on :next
    set lazyredraw                " don't redraw when don't have to
    set history=200
    set backspace=indent,eol,start
    set linebreak
    set cmdheight=1               " command line one line high
    set undolevels=1000           " 1000 undos
    set updatecount=100           " switch every 100 chars
    set complete=.,w,b,u,t,i,d    " do lots of scanning on tab completion
    set noerrorbells              " No error bells please
    set shell=bash
    set fileformats=unix
    set ff=unix
    "set mouse=a                    "enable mouse, ***breaks normal copy and paste***
    filetype on                   " Enable filetype detection
    filetype indent on            " Enable filetype-specific indenting
    filetype plugin on            " Enable filetype-specific plugins
    set laststatus=2
    set modeline
    set nospell                 " no spell checking


" Line Numbering Stuff

    "set number                      " regular line numbers
    set number relativenumber       " hybrid fixed/relative line numbers

    " Dynamic line numbers
    " Automatically switches between normal and relative line numbers
    " insert mode = regular line numbers
    " all other modes = hybrid-relative numbers
    augroup numbertoggle
      autocmd!
      autocmd BufEnter,FocusGained,InsertLeave * set number relativenumber
      autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END

    " Function to toggle line numbers
    " :set nonumber no longer works after messing with relativenumber
    function! ToggleNumber()
        set number!
        set relativenumber!
    endfunc

    " ctrl+n to toggle line numbers
    " doesn't break dynamic relative/nonrelative functionality
    nnoremap <c-n> :call ToggleNumber()<cr>



" Autocompletion/Searching Stuff

    set path+=$HOME/**
    set wildmenu                  " menu has tab completion
    set wildmode=longest,list,full
    set incsearch                 " incremental search
    set ignorecase smartcase      " search ignoring case unless caps are used
    set hlsearch                  " highlight the search
    "set showmatch                 " show matching bracket
    let g:loaded_matchparen=1     " DONT show matching bracket
    set diffopt=filler,iwhite     " ignore all whitespace and sync


" Backups

    set backup
    set backupdir=~/.vim_backup
    set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
    "set viminfo='100,f1

    " Don't create backup files when editing in these locations.
    set backupskip=/tmp/*,~/tmp/*


" Split Window Stuff

    set splitbelow splitright
    set winminheight=0          " Allow window split borders to touch.
    set winminwidth=0

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


" Mappings and other useful stuff

    " Make sure Vim returns to the same line when you reopen a file.
    " Thanks, Amit
    augroup line_return
        au!
        au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     execute 'normal! g`"zvzz' |
            \ endif
    augroup END

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

    " Space for command line mode, currently have <Space> as <leader> instead
    "nnoremap <Space> :

    " keeps visual block selected after changing indention
    vmap > >gv
    vmap < <gv

    " Read an empty HTML template and move cursor to title
    nnoremap <leader>html :-1read $HOME/.vim/.skeleton.html<CR>3jwf<

    " Disables automatic commenting on newline
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " Automatically deletes all trailing whitespace on save
    autocmd BufWritePre * %s/\s\+$//e

