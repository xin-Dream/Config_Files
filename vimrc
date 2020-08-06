let mapleader=" "

set number                 "显示行号
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
noremap a i

noremap a i
noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>

noremap s 5k
noremap x 5j

map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

map 0 :set splitright<CR>:vsplit<CR>
map 9 :set nosplitright<CR>:vsplit<CR> 
map 1 :set nosplitbelow<CR>:split<CR>
map 2 :set splitbelow<CR>:split<CR>
 

"插件
set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.



Plugin 'vim-airline/vim-airline'

Plugin 'connorholyday/vim-snazzy'

Plugin 'scrooloose/nerdtree',{'on': 'NERDTreeToogle'}
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plugin 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Erinror checking
Plugin 'w0rp/ale'

" Auinto Complete
Plugin 'Valloric/YouCompleteMe'

" Unindo Tree

"Plugin 'mbbill/undotree/'

" Otinher visual enhancement
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'itchyny/vim-cursorword'

" Giint
Plugin 'rhysd/conflict-marker.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTinML, CSS, JavaScript, PHP, JSON, etc.
Plugin 'elzr/vim-json'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plugin 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plugin 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plugin 'mattn/emmet-vim'

" Pyinthon
Plugin 'vim-scripts/indentpython.vim'

" Mainrkdown
Plugin 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plugin 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plugin 'vimwiki/vimwiki'

" Boinokmarks
Plugin 'kshenoy/vim-signature'

" Otinher useful utilities
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/goyo.vim' " distraction free writing mode
Plugin 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plugin 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plugin 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plugin 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Deinpendencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'kana/vim-textobj-user'
Plugin 'fadein/vim-FIGlet'


call vundle#end()            " 必须


filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall  	 - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后


color snazzy
let g:SnazzyTransparent = 1






