set nocompatible              " be iMproved, required
filetype off                  " required

set fencs=utf-8,gbk

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"
"YOU_COMPLETE_ME
Plugin 'Valloric/YouCompleteMe'

"YCM-Generator
Plugin 'rdnetto/YCM-Generator'

Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-omnicomplete'

Plugin 'vim-scripts/Tagbar'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-scripts/Mark--Karkat'
Plugin 'Highlight-UnMatched-Brackets'

" For ELM-lang
Plugin 'ElmCast/elm-vim'

" For Rust-lang
Plugin 'rust-lang/rust.vim'

" Syntastic
Plugin 'vim-syntastic/syntastic'


"color-colored
"Plugin 'jeaye/color_coded'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" http://www.linuxdeveloper.space/install-vim-powerline/
"python import sys; sys.path.append("/Library/Python/2.7/site-packages")
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set laststatus=2

set nu

"you complete me
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<C-\>'

nnoremap ff :YcmCompleter GoTo<CR>

set foldmethod=syntax
set foldlevelstart=99       " 打开文件是默认不折叠代码
nnoremap <space> za
                            " 用空格键来开关折叠

noremap <C-J> <C-W>j<CR>
noremap <C-K> <C-W>k<CR>
noremap <C-H> <C-W>h<CR>
noremap <C-L> <C-W>l<CR>

set list
set listchars=tab:>-,trail:-

"http://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

"auto line wrap in vimdiff
autocmd FilterWritePre * if &diff | setlocal wrap< | endif

" elm
let g:elm_setup_keybindings = 0
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

" Rust
let g:syntastic_rust_checkers = ['rustc']
" elm
let g:syntastic_elm_checkers = ['elm_make']

" Syntastic

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:elm_syntastic_show_warnings = 1

" tagbar
let g:tagbar_sort = 0
nnoremap <silent> <F9> :TagbarToggle<CR>

colorscheme koehler
