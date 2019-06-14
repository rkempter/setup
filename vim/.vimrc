set nocompatible              " required
filetype off                  " required

highlight BadWhitespace ctermbg=red guibg=red

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

vnoremap <C-c> "*y

" Splits
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding and map the folding on the space-key
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Show docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Python correct indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Full stack correct indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" C
au BufRead,BufNewFile *.c,*.h 
  \ set expandtab |
  \ set tabstop=4 |
  \ set shiftwidth=4 |
  \ set autoindent |
  \ set fileformat=unix |
  \ let b:comment_leader = '/* '

" Mark extra whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Turn on utf-8
set encoding=utf-8

" Nerd-tree: Hide files
" let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Set line numbering
set nu

" Set global clipboard
set clipboard=unnamed
