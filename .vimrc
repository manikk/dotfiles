"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.

set nocompatible


" ================ General Config ====================

set relativenumber              "Faster vim commands, with relative line numbers
set ruler                       "Show row, column in status-bar
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom


" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb


" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
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
