colo koehler
set number
set tabstop=4

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'https://github.com/vim-scripts/DrawIt.git'

Plug 'https://github.com/WolfgangMehner/c-support'

call plug#end()
