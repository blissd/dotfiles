" Use Vim settings, rather then Vi settings (much better!). Must be first setting.
set termguicolors

" To install plugins run ':PlugInstall'
call plug#begin(stdpath('data') . '/plugged')
Plug 'romainl/flattened'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fladson/vim-kitty'
call plug#end()

let g:airline_theme='solarized'

" Match light/dark theme to GUI appearance.
let g:theme = system("~/.zshfunctions/appearance")
if g:theme == "light"
  set background=light
  colorscheme flattened_light
else
  set background=dark
  colorscheme flattened_dark
endif


" ## General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)

set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive

set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set softtabstop=4	" Number of spaces per Tab
set tabstop=4	" spaces per tab

" make sure tabs stay as tabs in Makefiles
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
