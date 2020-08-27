set nocompatible
filetype plugin indent on
syntax enable
set noerrorbells
set novisualbell
set belloff=all
set wildmenu
set incsearch
set ruler
set hidden
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldlevel=99
set fileformat=unix

if has('win32')
    let $MYPLUGDIRECTORY = "~/vimfiles/plugged"
    set pythonthreedll=c:\Users\mike\anaconda3\python37.dll
    set pythonthreehome=c:\Users\mike\anaconda3
else
    let $MYPLUGDIRECTORY = "/home/mike/.vim/plugged"
endif

"vim-plug
call plug#begin($MYPLUGDIRECTORY)

Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'yegappan/taglist'
Plug 'frazrepo/vim-rainbow'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'rainglow/vim'
Plug 'flazz/vim-colorschemes'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-python/python-syntax'
Plug 'dense-analysis/ale'
Plug 'skywind3000/vim-quickui'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/loremipsum'

call plug#end()

"Emmet settings
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"YouCompleteMe settings
let g:ycm_auto_hover = ''

"ALE Settings
let g:ale_fixers = {'*': [], 'css': ['prettier'], 'html': ['prettier'], 'python': ['black']}
let g:ale_linters = {'python': ['pyflakes']}
let g:ale_linters_explicit = 1
"let g:ale_lint_on_enter = 0
"let g:ale_lint_on_save = 1
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_insert_leave = 0
"let g:ale_lint_on_filetype_changed = 0
let g:ale_sign_error = '='
let g:ale_sign_warning = '-'

"VIM Rainbow
let g:rainbow_active = 1

"Python syntax
let g:python_highlight_all = 1

"colorscheme Light
"colorscheme baycomb
"colorscheme biogoo
"colorscheme bluegreen
"colorscheme blueprint
"colorscheme blueshift
"colorscheme breeze
"colorscheme campfire
"colorscheme clarity
"colorscheme darkblue2
"colorscheme darkspectrum
"colorscheme dawn
"colorscheme github
"colorscheme gor
"colorscheme greyhouse
"colorscheme imperial
"colorscheme inkpot
"colorscheme martin_krischik 
"colorscheme morning
"colorscheme navajo-night
"colorscheme newspaper
"colorscheme sea
colorscheme challenger_deep

set showmode
set backspace=indent,eol,start
set lines=50 columns=122
set guifont=Anonymous\ Pro\ 12
set ignorecase smartcase
set infercase
set history=100
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set scrolloff=4
set lazyredraw

cabbr erc e /home/mike/.vimrc<CR>
cabbr rl so $MYVIMRC
cabbr loadpy 0r /home/mike/.vim/include_files/python_script.txt

map <silent> <F2> :set spell<CR>:set textwidth=80<CR> 
map <silent> <S-F2> :set nospell<CR>:set textwidth=0<CR>

let g:quickui_border_style = 2
map <silent> <F3> :call quickui#tools#list_buffer('e')<CR>

" nerd tree
let NERDChristmasTree=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

map <silent> <F4> :NERDTreeToggle<CR>
map <S-F4> :NERDTreeFromBookmark 

map <silent> <F5> :ALEFix<CR>
map <silent> <S-F5> :ALELint<CR>

map <silent> <F6> :IndentGuidesToggle<CR>

"tag list
"let Tlist_Ctags_Cmd = "C:/Users/Mike/utils/ctags/ctags58/ctags.exe"
let Tlist_Close_On_Select = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_One_File = 1
map <silent> <F7> :TlistToggle<CR>

" toggle line numbers
map <silent> <F8> :set number!<CR>
map <silent> <S-F8> :set relativenumber!<CR>

" map F9 is available

map <silent> <F10> :bd<CR>

" map F11 is available
" close the preview window
map <silent> <F11> :pc<CR>

"Quick UI Listbox
let content = [
            \ [ 'F2   Spell', 'set spell' ],
            \ [ 'S-F2 Nospell', 'set nospell' ],
            \ [ 'F3   Buffers', 'call quickui#tools#list_buffer("e")' ],
            \ [ 'F4   Nerd Tree', 'NERDTreeToggle' ],
            \ [ 'F5   ALEFix', 'ALEFix' ],
            \ [ 'S-F5 ALELint', 'ALELint' ],
            \ [ 'F6   Indent Guides', 'IndentGuidesToggle' ],
            \ [ 'F7   Tag List', 'TlistToggle' ],
            \ [ 'F8   Line Nums', 'set number!' ],
            \ [ 'F10  Buffer Delete', 'bd' ],
            \]
let opts = {'title': 'Select One'}
map <silent> <F12> :call quickui#listbox#open(content, opts)<CR>


