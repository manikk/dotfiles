"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.

set nocompatible

" ====================== Vundle ==============

filetype off "required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
Bundle 'gmarik/vundle'            "required!  let Vundle manage Vundle
Bundle 'scrooloose/nerdtree'      "NERDTree
Bundle 'flazz/vim-colorschemes'   "Color Schemes
Bundle "tpope/vim-surround"       "Surrond Plugin
Bundle "nrocco/vim-phplint"       "PHP Lint



" ================ NERDTree =========================

map <C-n> :NERDTreeToggle<CR> "Map Ctrl+n to NERDTree Toggle Command

" ================ PHPLint =========================
noremap <C-l> :Phplint<CR></CR>


" ================ General Config ====================

"set relativenumber              "Faster vim commands, with relative line numbers
set ruler                       "Show row, column in status-bar
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set number                      "Show Line numbers



" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb


" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab


" ================ Show invisible characters ======================

set listchars=tab:▸\ ,eol:¬,trail:.


" ================ Syntax highlighting ======================

filetype on
syntax on

autocmd BufNewFile,BufRead *.json set ft=javascript "Turn on syntax highlighting for json


" ================ Change key mappings ======================

nmap <leader>l :set list!<CR> "Shortcut to rapidly toggle `set list`

:imap jj <Esc>                "Use jj to get out of insert mode
