
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" alternatively, pass a path where Vundle should install plugins call vundle#begin('~/some/path/here')
set rtp+=~/.vim/bundle/Vundle.vim 

call vundle#begin() " required --------- All of your Plugins must be added after this line --------------------------

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"-------------------custom plugins-------------------------
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required --------- All of your Plugins must be added before this line --------------------------
filetype plugin indent on    " required
         
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ


" --------------------------Put non-Plugin stuff after this line-----------------------------------

set backspace=indent,eol,start      "makes backspace work like how it works in most other programs
set expandtab                       "set to use spaces for tabs
set softtabstop=3                   "sets the number of spaces per tab
set shiftwidth=3
set hlsearch                        "highlight all search pattern matches
set ignorecase                      "case insensitive search
colo slate                          "set color scheme
syntax on                           "enable syntaxc highlighting

"auto indenting settings
set autoindent
set smartindent
set cindent

set number                          "shows line numbers
set showmatch                       "show matching brackets
set laststatus=2                    "always show status line
set wildmenu                        "commandline completion. Ex. :color <tab> to get a list of options
set wildmode=longest:full,full      "complete to the longest common string and will invoke wildmenu
set incsearch                       "search as characters are entered


" --------------------------Put mappings after this line-----------------------------------

map <C-o> :NERDTreeToggle<CR>


" --------------------------lightline configurations-----------------------------------
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
   \ }

