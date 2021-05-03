let mapleader=" "

set number                 "显示行号
if has("syntax")
    syntax on
endif
syntax on                  "高亮显示" 
set showcmd                "底部显示模式"
set wildmenu
let &t_ut=''
set relativenumber
set autoindent             "回车后下一行自动保持缩进"
set tabstop=2              "tab显示空格数"
set shiftwidth=4           "每级缩进数"
set softtabstop=2          "tab空格转化数"
set cursorline             "当前行高亮"
set wrap                   "自动折行"
set wrapmargin=2           "折行与右缘空出字符"
set ruler                  "状态栏显示光标当前位置"
set showmatch              "自动高亮成对括号"
set hlsearch               "高亮搜索匹配结果"
set incsearch              "输入字符自动跳转到第一个匹配结果"
set ignorecase             "搜索忽略大小写"
set smartcase              "智能大小写
"set spell spelllang=en_us  "拼写检查"
set undofile               "保存撤销历史"
set history=1000           "记住历史操作数"
set paste				           "设置粘贴模式"



"按键映射，noremap 新替换的 被替换的


noremap i k 
noremap j h
noremap k j


 

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

          
