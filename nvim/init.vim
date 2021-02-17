set exrc

" Remap leaderkey
let mapleader = " "

call plug#begin('~/.vim/plugged')

" Telescope dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Language specific plugins
Plug 'dart-lang/dart-vim-plugin'
Plug 'iloginow/vim-stylus'
Plug 'nikvdp/ejs-syntax'

" Gutters like in VS Code when changing a line
Plug 'airblade/vim-gitgutter'

" Pretty NerdTree & Co
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Tmux interaction
Plug 'christoomey/vim-tmux-navigator'

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

" Yank and paste to system clipboard
noremap <Leader>y "+y
" noremap <Leader>p "+p

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup ON_SAVE
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
