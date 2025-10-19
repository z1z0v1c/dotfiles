set nocompatible 		" Disable Vi compatibility mode
set mouse=a 			" Enable mouse integration
set number 			" Show line numbers
set relativenumber		" Show relative line numbers
set wildmenu			" Enhanced command-line completion with visual menu
set cursorline                  " Highlight current line
set nowrap                      " Do not wrap long lines

inoremap <C-j> <ESC>

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

