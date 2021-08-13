


if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

"Plug 'https://github.com/vim-scripts/DrawIt.git'
Plug 'https://github.com/WolfgangMehner/c-support'
"Plug 'https://github.com/vim-scripts/Conque-GDB.git'
Plug 'https://github.com/lifepillar/vim-mucomplete.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/jlanzarotta/bufexplorer.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
"Plug 'https://github.com/rakr/vim-one.git'
Plug 'https://github.com/benmills/vimux.git'
"Plug 'https://github.com/vim-scripts/DrawIt.git'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/posva/vim-vue.git'

call plug#end()


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
"set shell=/bin/sh
set background=dark


set completeopt+=menuone
set shortmess+=c

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set colorcolumn=110


"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number


let no_buffers_menu=1
"if !exists('g:not_finish_vimplug')
"  colorscheme molokai
"endif

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
"set gfn=Monospace\ 10


"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50

highlight ColorColumn ctermbg=darkgray

nmap <F11> :BufExplorer<CR>
nmap <F10> :TagbarToggle<CR>
nmap <C-b> :NERDTreeCWD<CR>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>


" vim-airline
let g:airline_theme = 'peaksea' 
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1


"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1

set guifont=DejaVu\ Sans:s12



"let g:NERDTreeDirArrowExpandable =  '▶'
"let g:NERDTreeDirArrowCollapsible = '◀' 


"autocmd vimenter * NERDTree

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
endif

set paste

set foldmethod=marker foldmarker={,} foldlevel=2 
