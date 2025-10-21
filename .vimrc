set nocompatible 		" Disable Vi compatibility mode
set mouse=a 			" Enable mouse integration
set number 			" Show line numbers
set relativenumber		" Show relative line numbers
set wildmenu			" Enhanced command-line completion with visual menu
set cursorline                  " Highlight current line
set nowrap                      " Do not wrap long lines
set autowrite			" Automatically write files when switching buffers or leaving Vim

set statusline=%<%t%h%m%r\ \ %a\ %{strftime(\"%c\")}%=0x%b\ <%l,%c%v>\ %p

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
Plug 'machakann/vim-highlightedyank' " Highlight yanked text

call plug#end() " Initialize plgin system

inoremap <C-j> <ESC> " Remap escape for insert mode

colorscheme gruvbox " Set color scheme

let mapleader = "," " Set comma as the leader key
let g:highlightedyank_highlight_duration = 150 " Higlight yanked text for 150 ms

" File operations key bindings
nnoremap <leader>w :w<CR>              " Save file
nnoremap <leader>q :q<CR>              " Quit
nnoremap <leader>ww :wq<CR>            " Save and quit
nnoremap <leader>qq :q!<CR>            " Force quit

" Window operations key bindings
nnoremap <leader>v :vsplit<CR>        " Vertical split
nnoremap <leader>h :split<CR>         " Horizontal split
nnoremap <leader>c :close<CR>         " Close window

" Tab operations key bindings
nnoremap <leader>tn :tabnew<CR>        " New tab
nnoremap <leader>tc :tabclose<CR>      " Close tab
nnoremap <leader>tl :tabnext<CR>       " Next tab
nnoremap <leader>th :tabprevious<CR>   " Previous tab

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

