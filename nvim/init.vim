syntax on

:set number
:set relativenumber
:set autoindent
:set shiftwidth=4
:set tabstop=4
:set softtabstop=4
:set mouse=a
:set encoding=utf-8

:set nobackup
:set noswapfile
:set nu
:set nowritebackup
:set expandtab


syntax enable

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

colorscheme catppuccin-macchiato
source $HOME/.config/nvim/themes/airline.vim
