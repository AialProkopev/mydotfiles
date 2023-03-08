syntax on
syntax enable

:set number
:set relativenumber
:set mouse=a
:set encoding=utf-8
:set nobackup
:set noswapfile
:set nu
:set nowritebackup

" Tabulation
:set shiftwidth=2
:set tabstop=2
:set softtabstop=2
:set expandtab
:set smartindent

" Tab settings for other lang
filetype plugin on
autocmd FileType python call Some_settings()
autocmd FileType c call Some_settings()
autocmd FileType cpp call Some_settings()

function! Some_settings()
  setlocal tabstop=4
  setlocal shiftwidth=4
  setlocal softtabstop=4
  setlocal expandtab
endfunction

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'neovim/nvim-lspconfig'

" Frontend
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

colorscheme catppuccin-macchiato
source $HOME/.config/nvim/themes/airline.vim

" Netrw file explorer settings
let g:netrw_banner = 0 " remove banner
let g:netrw_liststyle = 3 " tree instead of plain view
let g:netrw_browse_split = 3 " open file in new tab

" Telescope bindings
nnoremap ,ff <cmd>Telescope find_files<cr>
nnoremap ,fg <cmd>Telescope live_grep<cr>

" Telescope fzf plugin
lua << EOF
require('telescope').load_extension('fzf')
EOF

" LSP server
lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.pyright.setup{}
EOF
