set exrc

call plug#begin('~/.vim/plugged')

" Telescope dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Language specific plugins
Plug 'dart-lang/dart-vim-plugin'

" LSP
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Commentary
Plug 'tpope/vim-commentary'

" Color strings to color
Plug 'norcalli/nvim-colorizer.lua'

" Status line
Plug 'itchyny/lightline.vim'

" Colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

let mapleader = " "

" Maybe change later
" Keybidings for lsp
let g:lsc_auto_map = v:true

" Yank and paste to system clipboard
noremap <Leader>Y "+y
noremap <Leader>P "+p

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup ON_SAVE
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
