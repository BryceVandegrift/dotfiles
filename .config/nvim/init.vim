let mapleader=","

let g:plugins = [
	\ "https://github.com/vimwiki/vimwiki.git",
	\ "https://github.com/ap/vim-css-color.git",
	\ "https://github.com/junegunn/goyo.vim.git",
	\ "https://github.com/tpope/vim-surround.git",
	\ "https://github.com/tpope/vim-commentary.git",
	\ "https://github.com/gpanders/vim-scdoc.git",
	\ "https://github.com/vim-scripts/SyntaxRange.git"]

set title
set go=a
set mouse=a
set hlsearch
set clipboard+=unnamedplus
set t_Co=256
set nobackup
set noswapfile
set notimeout
set laststatus=2

" NeoVim exclusive settings
if has("nvim")
	colorscheme vim
	set notermguicolors
endif

" Basic settings
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
set ttyfast
set nofoldenable

" Enable autocompletion
set wildmode=longest,list,full

" Disable automatic comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Map Goyo command
map <leader>f :Goyo \| set linebreak<CR>

" Map spell checking
map <leader>s :setlocal spell! spelllang=en_us<CR>

" Compile LaTeX documents
autocmd FileType tex map <silent> <leader>c :w! \| !pdflatex "%:p"<CR>

" Keybindings for convenience
nnoremap Y y$
nnoremap cc :center<CR>
nnoremap <leader>p :Ex<CR>

" Trim trailing spaces/whitespace
nnoremap <silent> <leader>t :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Open split at bottom right
set splitbelow splitright

" Split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Some defaults for files
autocmd FileType markdown setlocal tw=78 et ts=2 sw=2
autocmd FileType text setlocal tw=72
autocmd FileType vimwiki setlocal tw=78

" Syntax highlighting for specific files
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex

" Toggle statusbar
let s:bar_hidden = 0
function! ToggleBar()
	if s:bar_hidden == 0
		let s:bar_hidden = 1
		set noshowmode
		set noruler
		set laststatus=0
		set noshowcmd
	else
		let s:bar_hidden = 0
		set showmode
		set ruler
		set laststatus=2
		set showcmd
	endif
endfunction
nnoremap <leader>b :call ToggleBar()<CR>
