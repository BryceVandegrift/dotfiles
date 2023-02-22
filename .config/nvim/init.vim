let mapleader=","

let g:plugins = [
	\ "https://github.com/vimwiki/vimwiki.git",
	\ "https://github.com/ap/vim-css-color.git",
	\ "https://github.com/junegunn/goyo.vim.git",
	\ "https://github.com/tpope/vim-surround.git",
	\ "https://github.com/tpope/vim-commentary.git",
	\ "https://github.com/zaid/vim-rec.git"]

set title
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set nobackup
set noswapfile

" Basic settings
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
set ttyfast

" Enable autocompletion
set wildmode=longest,list,full

" Disable automatic comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Map Goyo command
map <leader>f :Goyo \| set linebreak<CR>

" Map spell checking
map <leader>s :setlocal spell! spelllang=en_us<CR>

" Open split at bottom right
set splitbelow splitright
