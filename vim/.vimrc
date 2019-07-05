
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'https://github.com/vim-scripts/DrawIt.git'

Plug 'https://github.com/WolfgangMehner/c-support'

Plug 'https://github.com/vim-scripts/Conque-GDB.git'

Plug 'https://github.com/lifepillar/vim-mucomplete.git'

Plug 'https://github.com/majutsushi/tagbar.git'

Plug 'https://github.com/jlanzarotta/bufexplorer.git'

Plug 'https://github.com/scrooloose/nerdtree.git'

Plug 'https://github.com/vim-airline/vim-airline.git'

Plug 'https://github.com/vim-airline/vim-airline-themes.git'

Plug 'https://github.com/rakr/vim-one.git'

Plug 'https://github.com/benmills/vimux.git'

Plug 'https://github.com/ryanoasis/vim-devicons.git'

call plug#end()


colorscheme one

set background=dark

set encoding=utf-8
set completeopt+=menuone
set shortmess+=c

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set colorcolumn=110

highlight ColorColumn ctermbg=darkgray

nmap <F11> :BufExplorer<CR>
nmap <F10> :TagbarToggle<CR>
nmap <C-b> :NERDTreeCWD<CR>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>


let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v' 

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='one'


autocmd vimenter * NERDTree




















