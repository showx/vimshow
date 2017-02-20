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
"依据上面的对起格式
"set si  
"set smartindent "智能对齐方式
set autoindent                      " automatically indent new line, 自动对齐
"set smarttab                        " 一次性删除多个空格, 只在行首用tab，其他地方的tab都用空格代替
"set wrap
"set lbr
"set tw=0


set foldenable
set foldlevel=100
set foldlevelstart=99
"set foldcolumn=n
set foldmethod=marker
"set fdm=marker| syntax
"zf(创建折叠) zo(打开折叠) zc(关闭折叠)

"/dev/null
"set grepprg="grep -n $* /dev/null"
"set grepformat="%f:%l:%m,%f:%l%m,%f  %l%m"

set grepprg=ack\ --nogroup\ --column\ $*
"set grepprg=ack\ $*
set grepformat=%f:%l:%c:%m

"Ack bone ./bone  当前文件夹要加点 不然读不了
"vimgrep效率低点

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

"注释 ======
"<c-_><c-_>   :: :TComment
"    <c-_><space> :: :TComment <QUERY COMMENT-BEGIN ?COMMENT-END>
"    <c-_>b       :: :TCommentBlock
"    <c-_>a       :: :TCommentAs <QUERY COMMENT TYPE>
"    <c-_>n       :: :TCommentAs &filetype <QUERY COUNT>
"    <c-_>s       :: :TCommentAs &filetype_<QUERY COMMENT SUBTYPE>
"    <c-_>i       :: :TCommentInline
"    <c-_>r       :: :TCommentRight
"    <c-_>p       :: Comment the current inner paragraph


":BundleList              -列举列表(也就是.vimrc)中配置的所有插件  
":BundleInstall          -安装列表中的全部插件  
":BundleInstall!         -更新列表中的全部插件  
":BundleSearch foo   -查找foo插件  
":BundleSearch! foo  -刷新foo插件缓存  
":BundleClean           -清除列表中没有的插件  
":BundleClean!          -清除列表中没有的插件  

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"map <C-x> :NERDTreeToggle
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"o       在已有窗口中打开文件、目录或书签，并跳到该窗口
"go      在已有窗口 中打开文件、目录或书签，但不跳到该窗口
"t       在新 Tab 中打开选中文件/书签，并跳到新 Tab
"T       在新 Tab 中打开选中文件/书签，但不跳到新 Tab
"i       split 一个新窗口打开选中文件，并跳到该窗口
"gi      split 一个新窗口打开选中文件，但不跳到该窗口
"s       vsplit 一个新窗口打开选中文件，并跳到该窗口
"gs      vsplit 一个新 窗口打开选中文件，但不跳到该窗口

"r.......递归刷新选中目录
"R.......递归刷新根结点       常用 新建或删除文件按一下


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

"set tags=tags;
"set autochdir

"<Tab>	向前循环切换到每个buffer名上
"<S-Tab>	向后循环切换到每个buffer名上
"<Enter>	在打开光标所在的buffer
"d	删除光标所在的buffer
let g:miniBufExplMapWindowNavVim = 1   	
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplMapCTabSwitchWindows = 1  
"<C-Tab>	向前循环切换到每个buffer上,并在但前窗口打开
"<C-S-Tab>	向后循环切换到每个buffer上,并在但前窗口打开
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

"  ctrl+]眺转  跳ctrl+T 转本来的函数  

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


"小笔记
" . 键就重复操作  , 返回上操作
" 'm包含位置标记m的行   '< 高亮选区的fhjn始行  '>结束行    %整个文件(:1,$的简写)
" :t  :m  复制或移动行
" :shell 可以运行shell
"c-w 切换到相应窗口里

"单词相关键位  w b e ge

"v模式下，范围选取 a i选取   a)一对圆括号  i)圆括号内部
" [[上一个函数 ]]下一个函数
" c-] 跳转相关函数 c-o跳转回至定义处 c-t

" 调定自动补全
" set complete-=i
" set complete+=k
" C-p C-n 自动补全
" n下一下 N上一个  有h在下面，每次打开都有帮助文件

set modifiable
set write

" x删除后面一个单词
"c修改  r替换
" /搜索下一个 ?搜索上一下   n下一个 #号是上一个 大写N下一个
"右下角显示坐标
set ruler


"~/.vim/syntax/php.vim 自己加的2008 php解释去掉，在macvim下不好用
"按v下启用 vi( va(  vi) va) 选择括号内的内容   选择括号和括号内的内容  vi}  va}
"自动位置标记    mm设置标记 `mll回到标记 ``上次跳转动作之前的位置   `.上次修改的地方  `^上次插入的地方 b
"括号内之间的跳转 gt
"%h %l 函数范围或插号范围的跳转  闭合标签
"水平分屏:sp <c-w>s  垂直分屏:vsp <c-w>v
" >右缩进  <左缩进
" :'<,'>  '<,'>代表高亮 部分 重复上次命令 @:即可
" {N}gt   gt下一标签 gT上一标签
"set pastetoggle=<f5>
"录制宏 q  @a  @@      按q 宏名  再按q录制结束 
"  :let i=1  qa I<c-r>=i<CR>)<Esc>     :let i += 1 q    执行宏    :normal @a 每一行执行这个宏
" c-r  执行输入 一般插入模式下

"调整窗口大小,方便使用
nmap    w=  :resize +3<CR>
nmap    w-  :resize -3<CR>
nmap    w,  :vertical resize -3<CR>
nmap    w.  :vertical resize +3<CR>

	
"ZZ   # → 快捷键，保存修改并推出  
"u撤消  ctrl + r # → 返回上一步  
"f查找字符 F反向上一个 t正向下一个 T正向下一个  ;重复上次   ,反转方向上次 

"NERDTree
"中键    对文件相当于 NERDTree-i，对目录相当于 NERDTree-e
"D       # 删除当前书签
"P       # 跳到根结点
"p       # 跳到父结点
"K       # 跳到当前目录下同级的第一个结点
"J       # 跳到当前目录下同级的最后一个结点
"k       # 跳到当前目录下同级的前一个结点
"j       # 跳到当前目录下同级的后一个结点

"C       # 将选中目录或选中文件的父目录设为根结点
"u       # 将当前根结点的父目录设为根目录，并变成合拢原根结点
"U       # 将当前根结点的父目录设为根目录，但保持展开原根结点
"r       # 递归刷新选中目录
"R       # 递归刷新根结点
"m       # 显示文件系统菜单
"cd      # 将 CWD 设为选中目录

"I       # 切换是否显示隐藏文件
"f       # 切换是否使用文件过滤器
"F       # 切换是否显示文件
"B       # 切换是否显示书签

"q       # 关闭 NerdTree 窗口
"?       # 切换是否显示 Quick Help

"ex模式 1第一行 .所在行 '< 高亮起始行  '> 高亮选区结束行 %整个文件
" *按钮 文件中的所有单词高亮

"ESC=ctrl-["

"gu小写 gU大写 g~反转大小写"
"v模式"
"v面向字符 V面向行 c-v面向列块 gv重选上次的高亮选区"

"[寄存器]
"复制专用寄存器 "0  y之后  "0p  会把复制的内容粘出来 ，即使按了d删除   字符寄存器：a~z   例以a为寄存名：  "ayiw   "aP  
" "%当前文件名 "#轮换文件名 ".上次插入的文本 ": 上次执行的Ex命令 "/上次查找的模式
" "+ 剪贴板 剪复制粘贴操作  "* 主剪贴板 用鼠标中键操作

"=======格式化小技巧======="
"1) 按两下小写g，即gg，定位光标到第一行。
"2) 按住Shift+v，即大写V，进入可视化编辑的列编辑模式。
"3) Shift+g，即大写G，选中整个代码。
"4) 按下等号=，格式化所有代码。


	