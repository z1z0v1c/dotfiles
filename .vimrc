set nocompatible 		" Disable Vi compatibility mode
set mouse=a 			" Enable mouse integration
set number 			" Show line numbers
set relativenumber		" Show relative line numbers
set wildmenu			" Enhanced command-line completion with visual menu
set cursorline                  " Highlight current line
set nowrap                      " Do not wrap long lines
set autowrite			" Automatically write files when switching buffers or leaving Vim

set statusline=%<%t%h%m%r\ \ %a\ %{strftime(\"%c\")}%=0x%b\ <%l,%c%v>\ %p

inoremap <C-j> <ESC>

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -flo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Install plugins
call plug#begin('~/.vim/plugged') " Specify a directory for plugins

Plug 'morhetz/gruvbox' " Gruvbox color scheme
Plug 'ryanoasis/vim-devicons' " File type icons
Plug 'preservim/nerdtree' " File system explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Better syntax highlighting

call plug#end() " Initialize plugin system

colorscheme gruvbox

