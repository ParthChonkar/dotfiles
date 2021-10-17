" Vim History Buffer Size
set history=500

" Filetype plugins
filetype plugin indent on

" Wild Menu
set wildmenu
set wildignore=*.o,*~,*.pyc

" Status/Ruler
set ruler laststatus=2

" Command Bar Height
set cmdheight=1

" Case handling for search
set ignorecase smartcase

" Enable syntax highlighting
syntax on
syntax enable

" Look and Feel
set background=dark
colorscheme desert

" Line numbers
set number rnu
highlight LineNr ctermfg=grey

" Textwidth
set textwidth=85

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Use spaces instead of tabs
set et smarttab ts=4 sw=4 sts=4

" Linebreak on 500 characters
set lbr
set tw=100

" Auto indents + wrapping
set ai si wrap

" Fast move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Horizontal split direction 
set splitbelow

