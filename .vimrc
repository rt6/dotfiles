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
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'townk/vim-autoclose'
Plugin 'scrooloose/nerdcommenter'
Plugin 'saltstack/salt-vim'
Plugin 'maksimr/vim-jsbeautify'
""Plugin 'taglist.vim' 
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

" vim-javascript
"let g:javascript_plugin_jsdoc = 1

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
"au VimEnter * NERDTree
map <C-n> :NERDTreeToggle<CR>


" configs for maksimr/vim-jsbeautify
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

" JSX syntax highlight in all .js files
" change to 1 if only JSX highlight for .jsx files
let g:jsx_ext_required = 0

"remap escape to jk for insert and visual mode
:imap jk <Esc>
:xnoremap jk <Esc>
