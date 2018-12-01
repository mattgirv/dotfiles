" mattgirv's .vimrc - 08/03/2012

""
"" VISUALS
""

colorscheme perun 
set t_Co=256
set background=dark
set nocompatible
filetype off

""
"" BEHAVIOUR
""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'universal-ctags/ctags'
Plugin 'Syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/csapprox'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" nerdtree autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set ruler
set expandtab
set showmode
set showcmd
" use upper case and search become case sensitive
set ignorecase
set smartcase
" line numbers 
set number
" formatting options
set textwidth=0
set wrapmargin=0
set formatoptions=crt
set nowrap
set shiftwidth=4
set tabstop=4
" interface
set wildmenu
" line number coloring
" completion menus
highlight Pmenu ctermfg=0 ctermbg=3
highlight PmenuSel ctermfg=0 ctermbg=7
" general
set hlsearch
set incsearch
set autoindent
syntax on
    if &diff
        syntax off
    endif
" auto switch to folder where editing file
autocmd BufEnter * cd %:p:h
set shortmess=I
set backspace=start,indent,eol
filetype plugin indent on
set completeopt=longest,menuone

"""
""" KEY REMAPS
"""
map <C-n> :NERDTreeToggle<CR>

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

highlight LineNr ctermfg=black

set mouse=a

"" C++ Configuration
""
set makeprg=make\ -C\ ../build\ -j12
nnoremap <F4> :make!<cr>
"" alt. config options
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
""
"" PLUGIN SPECIFIC
""

" vim-airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
