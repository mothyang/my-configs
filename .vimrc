"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get out of VI's compatible mode..
se nocompatible

"Sets how many lines of history VIM har to remember
set history=400
augroup filetypedetect
    au BufNewFile, BufRead *.asy setf asy
augroup END
filetype plugin on
"Enable filetype plugin
if has("eval")
filetype indent on
endif

"for latexsuite
se grepprg=grep\ -nH\ $*

"Set to auto read when a file is changed from the outside
set autoread

"Have the mouse enabled all the time:
set mouse=a

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax on

if has("multi_byte")
    set encoding=utf-8
    set fileencodings=ucs-bom,utf-8,chinese
endif

if has("gui_running")
    set go=m
    se guifont=DejaVu\ Sans\ Mono\ Bold\ 10
    colorscheme darkslategray
    winpos 530 0
    se lines=48 columns=100
endif

set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"Show line number
set nu

"Do not redraw, when running macros.. lazyredraw
set lz

"Ignore case when searching
"set ignorecase
set incsearch

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracet
set showmatch

"How many tenths of a second to blink
set mat=4

"Highlight search thing
set hlsearch

"Smart way to move btw. window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Turn backup off
set nobackup
set nowb
"set noswapfile


set fen
set fdl=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text option
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python script
"set expandtab
set ai
set si
set cindent
set wrap

set cinoptions=:0,g0,t0,(0,u0,
set tags=./tags
map <C-F11> :!ctags -R --c++-kinds=+p --fields=+fksiaS --extra=+q .<CR>
set shiftwidth=4
set softtabstop=4
set expandtab
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Auto_Open = 0
let Tlist_Exit_OnlyWindow = 1
let tlist_actionscript_settings = 'actionscript;c:class;f:method;p:property;v:variable'
set foldmethod=indent
set fileformats=unix,dos
let OmniCpp_SelectFirstItem = 2
"set completeopt=menu ",preview
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:EnhCommentifyMultiPartBlocks = 'yes'
let g:EnhCommentifyAlignRight = 'yes' 
" csupport date time format
let g:C_FormatDate = '%F' "the ISO 8601 date format
let g:C_FormatTime = '%R'
