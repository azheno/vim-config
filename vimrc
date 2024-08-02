" python 插件 
filetype plugin on
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3


"""""""""""""""
" 插件管理工具"
"""""""""""""""
set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加 


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"""""""""""""
" 插件管理器"
""""""""""""" 
Plugin 'VundleVim/Vundle.vim'


"""""""""
" 目录树"
""""""""" 
Plugin 'The-NERD-tree'
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25 


"""""""""""""""""""
"YouCompleteMe"
"""""""""""""""""""
Plugin 'ycm-core/YouCompleteMe'
set runtimepath+=~/.vim/bundle/YouCompleteMe
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口"
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0                            " 关闭加载.ycm_extra_conf.py提示
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键,没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"             " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>     " 跳转到定义处
let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项





call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本


