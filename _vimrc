call pathogen#infect()
call pathogen#helptags()
"reload vimrc :source ~\_vimrc
set guifont=Consolas:h10:cANSI
set guioptions=

colorscheme wombat 
set number
set nocompatible
filetype on
filetype plugin on
syntax enable
set autoindent
set wildmenu
set mouse=a
set backspace=2
set ignorecase
set smartcase
set incsearch
set hlsearch
set ruler
set nowrap
"auto load files
:set autoread 
"allways sync
autocmd BufEnter * :syntax sync fromstart
"if you want to try and spead it up
"syntax sync minlines=200
"or make a hot key
"noremap <F12> <Esc>:syntax sync fromstart<CR>
"inoremap <F12> <C-o>:syntax sync fromstart<CR>"

inoremap jj <Esc>

" set ; to : in command mode
noremap : ;
noremap! : ;
noremap ; :
noremap! ; :

iunmap :
iunmap ;

" Spaces are better than a tab character
set expandtab
set smarttab
 
" Who wants an 8 character tab? Not me!
set shiftwidth=4
set softtabstop=4

" keeps swap files local!
set directory=~\vimfiles\swap\

"fuzzyfind? fuzzybind!
nnoremap <C-Space> :FufFile<CR>

"alt key for moving from file to file
noremap <A-k> <C-W>k
noremap <A-j> <C-W>j
noremap <A-h> <C-W>h
noremap <A-l> <C-W>l
noremap <A-p> <C-W>p
noremap <A-o> <C-W>o
noremap <A-n> <C-W>n
noremap <A-r> <C-W>r

set directory=.,$TEMP

"quick font change
if  has("gui_running") && (has("win32") || has("win64")) 
    nnoremap <C-Up> :silent let &guifont=substitute(&guifont, ':h\zs\d\+', '\=submatch(0)+1', '')<CR> 
    nnoremap <C-Down> :silent let &guifont=substitute(&guifont, ':h\zs\d\+', '\=submatch(0)-1', '')<CR> 
endif 

"always save all
ca w wa
"always overwrite session
ca mks mks!
"replace back slashes with forward
ca fs s/\\/\//g
ca fsg %s/\\/\//g
"reaplace forward slashes with back
ca rfs s/\//\\/g
ca rfsg %s/\//\\/g
"open window maximized. 'x' on an English Windows version.'n' on a French one
au GUIEnter * simalt ~x "
"for CtrlP
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.class,*.jar,*.html,*.xml " Windows
let g:ctrlp_working_path_mode = 0
" Tab view
noremap gc :tabclose<cr> 

" NERDTtree
" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.vim-NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
noremap \\ :NERDTreeToggle<CR>

