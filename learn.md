
```$xslt
"依据上面的对起格式
"set si  
"set smartindent "智能对齐方式
set autoindent                      " automatically indent new line, 自动对齐
"set smarttab                        " 一次性删除多个空格, 只在行首用tab，其他地方的tab都用空格代替
"set wrap
"set lbr
"set tw=0

"set fdm=marker| syntax
"zf(创建折叠) zo(打开折叠) zc(关闭折叠)

"/dev/null
"set grepprg="grep -n $* /dev/null"
"set grepformat="%f:%l:%m,%f:%l%m,%f  %l%m"

"Ack bone ./bone  当前文件夹要加点 不然读不了
"vimgrep效率低点


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

"set tags=tags;
"set autochdir

"<Tab>	向前循环切换到每个buffer名上
"<S-Tab>	向后循环切换到每个buffer名上
"<Enter>	在打开光标所在的buffer
"d	删除光标所在的buffer

"<C-Tab>	向前循环切换到每个buffer上,并在但前窗口打开
"<C-S-Tab>	向后循环切换到每个buffer上,并在但前窗口打开

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

" x删除后面一个单词
"c修改  r替换
" /搜索下一个 ?搜索上一下   n下一个 #号是上一个 大写N下一个
"右下角显示坐标

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
"[复制]专用寄存器 "0  y之后  "0p  会把复制的内容粘出来 ，即使按了d删除   字符寄存器：a~z   例以a为寄存名：  "ayiw   "aP  
" "%当前文件名 "#轮换文件名 ".上次插入的文本 ": 上次执行的Ex命令 "/上次查找的模式
" "+ 剪贴板 剪复制粘贴操作  "* 主剪贴板 用鼠标中键操作

"=======格式化小技巧======="
"1) 按两下小写g，即gg，定位光标到第一行。
"2) 按住Shift+v，即大写V，进入可视化编辑的列编辑模式。
"3) Shift+g，即大写G，选中整个代码。
"4) 按下等号=，格式化所有代码。

"Quickfix
" :cnext cprev :cfirst :clast :cnfile :cpfile :cc N :copen打开quickfix窗口 :cclose 关闭quickfix窗口

"vim默认使用netrw管理文件  :edit  :e.  打开文件管理器，当前工作目录vv  :Explore :E 文件管理器，缓存区所在目录

"  ctrl+]眺转  跳ctrl+T 转本来的函数  

```