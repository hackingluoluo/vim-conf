"============Vundle Setting Start============
set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'taglist.vim'
Plugin 'vim-airline'

" plugin on GitHub repo
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache'
Plugin 'mhinz/vim-startify'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'majutsushi/tagbar'
Bundle 'edkolev/tmuxline.vim'
Bundle 'vim-ctrlspace/vim-ctrlspace'
"Bundle 'luochen1990/rainbow'
"Plugin 'kien/rainbow_parentheses.vim'
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"Plugin 'altercation/vim-colors-solarized' "solarize主题
Plugin 'drmingdrmer/xptemplate'
"Plugin '2072/PHP-Indenting-for-VIm' "PHP缩进
"Bundle 'Lokaltog/vim-powerline'
Bundle "yonchu/accelerated-smooth-scroll"
Bundle "tacahiroy/ctrlp-funky"
Bundle 'Raimondi/delimitMate'
"下面是 vundle的一些命令代会会用到
"
" " Brief help
"  :BundleList          - list configured bundles
"  :BundleInstall(!)    - install(update) bundles
"  :BundleSearch(!) foo - search(or refresh cache first) for foo
"  :BundleClean(!)      - confirm(or auto-approve) removal of unused
"  bundles
"    
"  see :h vundle for more details or wiki for FAQ
"  NOTE: comments after Bundle command are not allowed.

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

call vundle#end()            " required
"============Vundle Setting End============
filetype plugin indent on "允许插件

set laststatus=2
let g:Powerline_symbols='unicode'

map <F4> :NERDTreeMirror<CR>
map <F4> :NERDTreeToggle<CR>


if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start		" allow backspacing over everything in insert mode
"set ai			" always set autoindenting on
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
                " than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set nu

" Only do this part when compiled with support for autocommands
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"if &term=="xterm"
"     set t_Co=8
"     set t_Sb=[4%dm
"     set t_Sf=[3%dm
"endif

hi Comment ctermfg=darkgreen
"set fileencodings=utf-8,gb2312,gbk
set fileformats=unix
"set encoding=prc
set mouse=a

"set ttymouse=xterm2
"behave xterm
"set selectmode=mouse 

set termencoding=utf-8
set encoding=utf-8                                    "设置gvim内部编码
set fileencoding=utf-8                                "设置当前文件编码
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "设置支持打开的文件编码
" 文件格式，默认 ffs=dos,uni
" set fileformat=unix                                   "设置新文件的<EOL>格式
" set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类

" snippets
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:snips_author='zhaoweiluo'
let g:author='zhaoweiluo'
let g:snips_email='zhaoweiluo@360.com'
" powerline 
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set laststatus=2
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"let Powerline_symbols='compatible'
let g:airline_powerline_fonts = 1
 " 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#H',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '%a',
      \'y'    : '#W %R',
      \'z'    : '#H'}

":inoremap ( ()<ESC>i<SPACE><SPACE><BACKSPACE><BACKSPACE>
":inoremap [ []<ESC>i
":inoremap { {}<ESC>i
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i


""""""""
set clipboard=unnamed
"将系统剪贴板指定到匿名寄存器中 使vim共享数据


""""""""
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplMoreThanOne = 0
" MiniBufExpl Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
""""""""

""""""""""
filetype plugin indent on                             "启用缩进
set smartindent                                       "启用智能对齐方式
set expandtab                                         "将Tab键转换为空格
set tabstop=4                                         "设置Tab键的宽度
set shiftwidth=4                                      "换行时自动缩进4个空格
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度的空格
"set foldenable                                        "启用折叠
"set foldmethod=indent                                 "indent 折叠方式
set autochdir
""""""""

"< TagList 插件配置 >
"-----------------------------------------------------------------------------
" 高效地浏览源码, 其功能就像vc中的workpace
" 那里面列出了当前文件中的所有宏,全局变量, 函数名等
 
" 常规模式下输入 tl 调用插件，如果有打开 Tagbar 窗口则先将其关闭
set tags=./tags,tags;$HOME
nmap tl :TagbarClose<CR>:Tlist<CR>
let Tlist_Show_One_File=1                   "只显示当前文件的tags
" let Tlist_Enable_Fold_Column=0            "使taglist插件不显示左边的折叠行
let Tlist_Exit_OnlyWindow=1                 "如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_File_Fold_Auto_Close=1            "自动折叠
let Tlist_WinWidth=30                       "设置窗口宽度
let Tlist_Use_Right_Window=1                "在右侧窗口中显示

let mapleader=','
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

"ctrlp config
"let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed=0
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}
noremap <C-a> :CtrlP ~<CR>

"tagbar config
nmap <F9> :TagbarToggle<CR>
" 启动时自动focus
let g:tagbar_autofocus = 1

" for php, delete if you do not need
let g:tagbar_type_ps1 = {
    \ 'ctagstype' : 'powershell',
    \ 'kinds'     : [
        \ 'f:function',
        \ 'i:filter',
        \ 'a:alias'
    \ ]
    \ }

"funcy config
noremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

"dalimitMate config
" 自动补全单引号，双引号等
" for python docstring ", 特别有用
au FileType python let b:delimitMate_nesting_quotes = ['"']
" 关闭某些类型文件的自动补全
"au FileType mail let b:delimitMate_autoclose = 0
