set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
""Plugin 'kien/rainbow_parentheses.vim'
Plugin 'luochen1990/rainbow'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
""Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
"Plugin 'townk/vim-autoclose'
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, insted use:
filetype plugin on

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" use jshint to lint for javascript
let g:syntastic_javascript_checkers = ['jshint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Rainbox Parentheses
"0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1 

" Put your non-Plugin stuff after this line
set number
filetype plugin indent on
set cursorline
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
:iabbrev </ </<C-X><C-O>

"syntax on
"colo koehler
"Solarize color
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" indent guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=237
au VimEnter * IndentGuidesEnable

au VimEnter * RainbowToggle
au VimEnter * NERDTree


