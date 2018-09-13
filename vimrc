"    【永升 vim 配置特别版】
"出厂设置 
"vim -u NONE -N
"set g:showpath="/show/"   
"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限 
set nocompatible
"backspace有几种工作方式，默认是vi兼容的。对新手来说很不习惯。对老vi
"不那么熟悉的人也都挺困扰的。
set backspace=indent,eol,start
"十进制模式 避免 007+001=010
set nrformats=

"文件格式"
set fileformats=unix


source /show/vim/bundles.vim
"要设置配置文件的环境变量
"runtime ftplugin/man.vim
"内部编码
set encoding=utf-8
set fenc=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5
"背景色
set bg=dark
"中文帮助
set helplang=cn
"打开搜索高亮
set hlsearch
""忽略大小写
set ignorecase
"在查找时输入字符过程中就高亮显示匹配点。然后回车跳到该匹配点。
set incsearch
""设置查找到文件尾部后折返开头或查找到开头后折返尾部。
set wrapscan
"设置字体
if has("gui_running")
      set guifont=Consolas:h9
endif

" >. V模式向左tab

" 格式化高亮 on enable
syntax on
" 显示行号
set nu
" 括号匹配
set showmatch
"自动检测文件类型
filetype plugin indent on 
"在缩进和遇到 Tab 键时使用空格替代
set expandtab
"根据文件类型设置缩进格式
"没匹配的情况，默认用4个空格,FileType不是指文件扩展名
set shiftwidth=4
set tabstop=4
au FileType tpl,html,python,vim,javascript,js setl shiftwidth=2
au FileType tpl,html,python,vim,javascript,js setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

set expandtab "把tab换成空格
"然后把下面的命令加入到.vimrc中：
"autocmd FileType c,cpp set shiftwidth=4


"启动vim时不要自动折叠代码
"自动对齐       
set ai   


set foldenable
set foldlevel=100
set foldlevelstart=99
"set foldcolumn=n
set foldmethod=marker


set grepprg=ack\ --nogroup\ --column\ $*
"set grepprg=ack\ $*
set grepformat=%f:%l:%c:%m


set showcmd
set nojoinspaces
set noswapfile
if has('mouse')
  set mouse=nv
endif
set number

"rtp即runtimepath
"let $VIMRUNTIME = "/show/vim/runtime"
set runtimepath+=/show/vim/runtime
set rtp+=/show/vim/bundle/vundle/  
set rtp+=/show/vim/bundle


"$HOME/.vim/bundle
"let vundle#bundle_dir = expand('/show/vim/bundle', 1)
"let g:vundle#bundle_dir = expand('/show/vim/bundle', 1)
call vundle#rc('/show/vim/bundle') 

"主题
"let macvim_skip_colorscheme = 1
set guifont=LetterGothicMono:h18
set bg=dark
"colorscheme murphy
"colorscheme monokai

"source /show/vim/bundle/php-doc.vim

"Bundle 'gmarik/vundle'
Bundle 'vim-scripts/L9'  
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/winmanager'
Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/OmniCppComplete'
Bundle 'vim-scripts/FuzzyFinder'
"Bundle 'vim-scripts/tag,list.vim'
"搜索相关
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/ag.vim'
Bundle 'dyng/ctrlsf.vim'
"end 搜索相关
Bundle 'vim-scripts/php-doc'
Bundle 'vim-scripts/cscope.vim'
Bundle 'vim-scripts/minibufexplorerpp'
"文件tab
"minibufexplorer  :tabc #关闭当前的tab :tabo #关闭所有其他的tab:bn下一个 :bp上一个 C-w,h j k l    向"左,下,上,右"切换窗口.  c-tab c-s-tab
" b<n> 第几个 bd关闭
Bundle 'vim-scripts/minibufexpl.vim'
"env.vim files.list tags
"Bundle 'vim-scripts/project.vim'
Bundle 'tristen/vim-sparkup'
Bundle 'mattn/emmet-vim'
Bundle 'Shougo/neocomplcache.vim'
" surround  vee S"  一个单词会双引号引住了  例: bb  变成  "bb"
" ysiw" 对文字两边加双引号  cs"'改变双引号为单引号  ds删除  vee选择好字之后   S"选中的文本加"
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails.git'
Bundle 'vim-scripts/tComment'
Bundle 'taglist'
Bundle 'vim-airline/vim-airline'
"php格式化
"Bundle 'clbustos/PHP_Beautifier' vimpress
"map <C-b> :% ! php_beautifier --filters "phpBB() EqualsAlign() ArrayNested()"<CR>


"Vundle、NeoBundle、Pathogen 等直接安装使用。且为各个版本打了 tag， NeoBundle 可以很方便的指定安装特定版本的中文文档。

if &term=="xterm"
  set t_Co=8
  set t_Sb=^[[4%dm
  set t_Sf=^[[3%dm
endif
let g:neocomplcache_enable_at_startup = 1
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>


let g:miniBufExplMapWindowNavVim = 1   	
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplMapCTabSwitchWindows = 1  

let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0
map <C-1> :MBEbp<CR>  ":bp 上一个
map <C-2> :MBEbn<CR>  ":bn 下一个
":b"num"   打开指定的buffer，"num 看上面的数字切换即可

"配置taglist
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Use_Right_Window=1
"let Tlist_Auto_Open=1
":TlistOpen :TlistClose :TlistToggle

"保存文件运行ctags -R
":autocmd BufWritePost * call system("ctags -R")

"单击打开目录
let NERDTreeMouseMode = 3

"设置nmap管理
"要在winManager使用 nerdtree ,加上以下代码
let g:NERDTree_title='NERD Tree'  
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
function! NERDTree_IsValid()  
    return 1  
	endfunction  
"NERDTreeToggle  NERDTree  TagList
"let g:winManagerWindowLayout = "NERDTree|TagList,BufExplorer" 
let g:winManagerWindowLayout = "NERDTree,BufExplorer" 
"|TagList,自己喜欢 taglist在左边就好
"let g:winManagerWidth = 50
"let g:defaultExplorer
let g:AutoOpenWinManager = 1

nmap wm :WMToggle
nmap tl :TlistOpen
"au VimEnter *:WMOpen
"au VimEnter *:WMToggle

"自动退出Winmanager
autocmd bufenter * if (winnr("$") == 2 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary")  | qa | endif
  
function! <SID>ToggleWindowsManager()  
    if IsWinManagerVisible()  
        call s:CloseWindowsManager()  
    else  
        call s:StartWindowsManager()  
                exe 'q'  
    end  
endfunction  


"nmap pro:Project

"更新cats
"nnoremap <f5> :!ctags -R<CR>
nnoremap <f5> :!/usr/local/bin/ctags -R<CR>

" brew install Ack
let g:ackprg = "/usr/local/bin/Ack -s -H --nocolor --nogroup --column"
"ag会比ack快一点
let g:ackprg = 'ag --nogroup --nocolor --column'
"let g:ackprg = 'Ack'

nmap <d-i> :echo "cmd-i was pressed"<CR>
nmap <d-I> :echo "cmd-I was pressed"<CR>
" these do nothing:
nmap <m-i> :echo "alt-i was pressed"<CR>
nmap <m-I> :echo "alt-I was pressed"<CR>
nmap <d-a-i> :echo "cmd-alt-i was pressed"<CR>
nmap <D-S-i> :echo "cmd-shift-i was pressed"<CR>
nmap <S-D-'> :echo "cmd-shift-' was pressed"<CR>
nmap <A-D-'> :echo "cmd-alt-' was pressed"<CR>
nmap <A-C-'> :echo "cmd-alt-' was pressed"<CR>
map <D-}> :echo "cmd-} was pressed"<CR>
map <D-S-]> :echo "cmd-shift-] was pressed"<CR>
map <D-S-[> :echo "cmd-shift-[ was pressed"<CR>

"EX模式 例：:'<,'>p    :2p  :号为EX命令


"养成使用hjkl的习惯，禁用up down left right键位
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"缓冲区快捷键
noremap <silent> [b :bprevious<CR>
noremap <silent> ]b :bnext<CR>
noremap <silent> [B :bfirst<CR>
noremap <silent> ]B :blast<CR>

set modifiable
set write
set ruler

"调整窗口大小,方便使用
nmap    w=  :resize +3<CR>
nmap    w-  :resize -3<CR>
nmap    w,  :vertical resize -3<CR>
nmap    w.  :vertical resize +3<CR>