" ## Boostrap file generated by https://vimconfig.com

" Use Vim settings, rather then Vi settings (much better!). Must be first setting.
set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()

set laststatus=2  " for lightlight plugin

filetype on
filetype plugin on
filetype indent on	" filetype based indentation

syntax on

if &term =~ '256color'

	  " disable Background Color Erase (BCE) so that color schemes
	  "   " render properly when inside 256-color tmux and GNU screen.
	  "     " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	set t_ut=
	let g:solarized_termcolors=256 " color depth
endif

let g:solarized_termtrans=0 " 1|0 background transparent
let g:solarized_bold=1 " 1|0 show bold fonts
let g:solarized_italic=1 " 1|0 show italic fonts
let g:solarized_underline=1 " 1|0 show underlines
let g:solarized_contrast="normal" " normal|high|low contrast
let g:solarized_visibility="low" " normal|high|low effect on whitespace characters

" Solarized light during the day, solarized dark during the night
let hour = strftime("%H")
if 6 <= hour && hour < 18
  set background=light
else
  set background=dark
endif

"set background=dark
let g:lightline.colorscheme = 'solarized' 
colorscheme solarized

" ## General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)

set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally

set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set tabstop=4	" spaces per tab

" ## Advanced
set ruler	" Show row and column ruler information

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" make sure tabs stay as tabs in Makefiles
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
