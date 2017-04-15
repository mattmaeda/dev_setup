set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'avakhov/vim-yaml'

call vundle#end()

syntax on
filetype plugin indent on
set textwidth=80
set colorcolumn=80
set number
match ErrorMsg '\s\+$'
autocmd BufWritePre *.* :%s/\s\+$//e | %s/\r$//e | %s/\($\n\s*\)\+\%$//e

augroup prewrites
	autocmd!
		autocmd BufWritePre,FileWritePre * :%s/\s\+$//e | %s/\r$//e | %s/\($\n\s*\)\+\%$//e
augroup END
