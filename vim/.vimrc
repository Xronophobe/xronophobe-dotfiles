set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
"Plugin 'digitaltoad/vim-pug'
"Plugin 'vim-scripts/loremipsum'
Plugin 'fidian/hexmode'
Plugin 'tpope/vim-abolish'

"Color scheme
Plugin 'whatyouhide/vim-gotham'

filetype plugin indent on

" Theme
syntax enable
" set background=dark
" cd ~/.vim/colors
" wget https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
colorscheme gotham256

let mapleader=' '

noremap <leader>w  :w!<cr>
noremap <leader>q  :q!<cr>
noremap <leader>wq  :wq<cr>
nmap <F1> :echo expand('%:p')<cr>
imap <F1> <nop>
nnoremap <F2> :NERDTreeToggle<cr>
map <leader>s :source ~/.vimrc<CR>

set history=700

set autoread

set ruler
set wildmenu
set hlsearch!

nnoremap <F10> :set hlsearch!<CR>

set list
set listchars=trail:·

set encoding=utf8

set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab

set expandtab
set shiftwidth=2
set tabstop=2

set shell=zsh

" set mouse=a

" let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'
" let g:EditorConfig_core_mode = 'external_command'
" let g:EditorConfig_verbose = 1

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nostartofline

set title

set showcmd

set cursorline
set cursorcolumn

set incsearch
set smartcase

set lazyredraw


let g:PreserveNoEOL_Function = function('PreserveNoEOL#Python#Preserve')

set clipboard=unnamed

" Sane indenting
vnoremap < <gv
vnoremap > >gv

filetype plugin on
filetype indent on

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set laststatus=2
set timeoutlen=50

map <Up> :echo "PRESS K damnit"<cr>
map <Down> :echo "You meant J for moving down right?"<cr>
map <Left> :echo "PRESS H for moving left..."<cr>
map <Right> :echo "PRESS L instead of right"<cr> 

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" set relativenumber
set number

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
    set nonumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

"function rmWindowsLineStart()
"    %s/ //g

map <BS> gT
map <Tab> gt

noremap % v%

