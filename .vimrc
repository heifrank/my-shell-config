" vundle
set nocompatible                " be iMproved, required
filetype off                    " required
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rdnetto/YCM-Generator'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
call vundle#end()               " required
filetype plugin indent on       " required

" colors
syntax enable
set background=dark
colorscheme solarized
set t_Co=256

" spaces and tabs
set shiftwidth=4                " << 和 >> 命令移动宽度为4
set expandtab                   " 插入tab的时候转化成空格
set softtabstop=4               " 编辑（插入）模式下，输入tab或者删除键时相应移动宽度为4个空格
set tabstop=4                   " 设定tab显示宽度为4个空格
set smartindent
set backspace=2

" UI config
set number                      " 显示行号
set cursorline                  " 突出显示当前行
set ruler                       " 打开状态栏标尺

" searching
set incsearch                   " 输入搜索内容时就显示搜索结果
set hlsearch                    " 搜索时高亮显示被找到的文本
set nowrapscan                  " 禁止在搜索到文件两端时重新搜索
set ignorecase

" folding
"set foldenable
"set foldmethod=indent
"nnoremap <space> zA
"set foldlevelstart=0

" movement
inoremap <C-a> <Home>
inoremap <C-e> <End>

" leaders
let mapleader = ','
vnoremap <Leader>y "+y

" edit
set pastetoggle=<F2>

" YCM plugin
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_filetype_whitelist={'cpp':1, 'python':1, 'go': 1, 'php':1, 'java':1}
let g:ycm_confirm_extra_conf = 0
nnoremap <Leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <Leader>gs :YcmCompleter GoToDeclaration<CR>

" easy motion plugin
let g:EasyMotion_smartcase = 1
map <Leader> <Plug>(easymotion-prefix)
map s <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" NerdTree plugin
map <F3> :NERDTreeTabsToggle<CR>

" CtrlP plugin
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Tagbar plugin
nmap <F8> :TagbarToggle<CR>

" Ag plugin

" airline plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['y', 'z', 'error', 'warning']]
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#show_close_button = 0
set laststatus=2

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
"function! ToggleRelativeOn()
"    set rnu!
"    set nu
"endfunction
"autocmd FocusLost * call ToggleRelativeOn()
"autocmd FocusGained * call ToggleRelativeOn()
"autocmd InsertEnter * call ToggleRelativeOn()
"autocmd InsertLeave * call ToggleRelativeOn()

" templates
autocmd BufNewFile *.cc,*.h,*.sh,*.java,*.py,*.go exec ":call SetTitle()"
function SetTitle()
    if &filetype == 'sh'
        call setline(1, "\#!/usr/bin/env bash")
        call append(1, "\#########################################################################")
        call append(2, "\# Author: songyang")
        call append(3, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(4, "\# File Name: ".expand("%"))
        call append(5, "\# Description: ")
        call append(6, "\#########################################################################")
        call append(7, "")
        call append(8, "\# vim: set noexpandtab ts=4 sts=4 sw=4 smartindent:")
    elseif &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\#-*- coding: utf-8 -*-")
        call append(2, "\#########################################################################")
        call append(3, "\# Author: songyang")
        call append(4, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(5, "\# File Name: ".expand("%"))
        call append(6, "\# Description: ")
        call append(7, "\#########################################################################")
        call append(8, "")
        call append(9, "\# vim: set noexpandtab ts=4 sts=4 sw=4 smartindent:")
    elseif &filetype == 'go'
        call setline(1, "\//#########################################################################")
        call append(1, "\// Author: songyang")
        call append(2, "\// Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(3, "\// File Name: ".expand("%"))
        call append(4, "\// Description: ")
        call append(5, "\//#########################################################################")
        call append(6, "")
        call append(7, "\// vim: set noexpandtab ts=4 sts=4 sw=4 smartindent:")
    elseif &filetype == 'cpp'
        call setline(1, "\//#########################################################################")
        call append(1, "\// Author: songyang")
        call append(2, "\// Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(3, "\// File Name: ".expand("%"))
        call append(4, "\// Description: ")
        call append(5, "\//#########################################################################")
        call append(6, "")
        call append(7, "\// vim: set expandtab ts=4 sts=4 sw=4 smartindent:")
    endif
endfunction
