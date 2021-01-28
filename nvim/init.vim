set exrc

call plug#begin('~/.vim/plugged')

" Telescope dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'tpope/vim-commentary'

" Color strings to color
Plug 'norcalli/nvim-colorizer.lua'

" Colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

let mapleader = " "

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup ON_SAVE
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
