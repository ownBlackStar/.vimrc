"插件管理
set rtp+=~/vim_manage/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'jiangmiao/auto-pairs'
"代码格式化
Bundle 'godlygeek/tabular' 
"标签导航,f9
Bundle 'majutsushi/tagbar' 
"变量导航,f8
Bundle 'vim-scripts/taglist.vim'
"文件搜索,ctrl+p
Bundle 'kien/ctrlp.vim'
"快速注释, ,cc|,cs|,cu
Bundle 'scrooloose/nerdcommenter'
"插入自定义代码
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
"美化状态栏
Bundle 'Lokaltog/vim-powerline'
"在可视状态下多选
Bundle 'terryma/vim-multiple-cursors'





"自动补全
"if &term=="xterm"
"    set t_Co=8
"    set t_Sb=^[[4%dm
"    set t_Sf=^[[3%dm
"endif
let g:neocomplcache_enable_at_startup=1
"tab补全
let g:SuperTabDefaultCompletionType="context"

"空格选择
inoremap <expr><space>  pumvisible() ? neocomplcache#close_popup() . "\<SPACE>" : "\<SPACE>"

"括号补全
let g:AutoPairsFlyMode=0
let g:AutoPairsShortcutBackInsert='<M-b>'
"":inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(')')<CR>
"":inoremap { {<CR>}<ESC>O
"":inoremap } <c-r>=ClosePair('}')<CR>
"":inoremap [ []<ESC>i
"":inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap " ""<ESC>i
"":inoremap ' ''<ESC>i
""function! ClosePair(char)
""    if getline('.')[col('.') - 1] == a:char
""        return "\<Right>"
""    else
""        return a:char
""    endif
""endfunction


"配置目录树
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

"语法检测
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open=1
"let g:loaded_syntastic_php_php_checker=1
let g:syntastic_php_checkers = ['php','phpcs','phpmd']
let g:syntastic_php_phpcs_args = "--report=csv --standard=WordPress"
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"


"鼠标修改窗口大小
":set mouse=5

"插入当前时间
:nnoremap <F5> "=strftime("%F  %H:%M:%S")<CR>gP
:inoremap <F5> <C-R>=strftime("%F %H:%M:%S")<CR>


"设置tagbar标签快捷键
nmap <F9> :TagbarToggle<CR>
let g:tagbar_indent=1
let g:tagbar_autofocus=1
let g:tagbar_singleclick=1
"非常有用，用一个提示窗口来显示具体代码
let g:tagbar_autopreview=1
"设置tlist标签快捷键
nmap <F8> :TlistToggle<CR>
let Tlist_Show_One_File=1
let Tlist_exit_OnlyWindow=1
let Tlist_Auto_Open=0


"引入php的ctags
let g:tagbar_phpctags_bin='~/.vim/tagbar-phpctags'

"使注释,cc起效果
let g:mapleader=","


"代码片段
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsSnippetsDir= '~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion=2
let g:snips_author="chentengfeng @create_at "



"基本配置
set autoindent "自动缩进
set nu "设置行号
set relativenumber "设置相对行号
set tabstop=4 "tab键的宽度
set softtabstop=4 "统一缩进为4
set shiftwidth=4 "统一缩进
set expandtab
set t_Co=256
set showmatch "高亮显示匹配的括号
set nowrap "设置不换行
set guifont=Monospace\ 14


set encoding=utf8
set fileencoding=utf8

"浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertLeave * se cul
set ruler "显示标尺
set cursorline "突出显示当前行
set scrolloff=10 "上下保持五行的距离
set autoread "设置当文件被修改时自动载入
set clipboard+=unnamed
set nocompatible "使用vim的键盘模式

"设置状态栏主体风格
let g:Powerline_colorscheme='solarized256'

"颜色
syntax enable
set background=light
"colorscheme dark;
colorscheme solarized


"开启phpcomplete插件
"检测文件类型机制
filetype plugin on
filetype on
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"
"设置历史记录条数
set history=200

"set mouse=a
