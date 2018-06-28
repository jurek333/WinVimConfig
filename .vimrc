set nocompatible
set backspace=2
set backspace=indent,eol,start
filetype off
set rtp+=C:/Users/Maciej/vimfiles/bundle/Vundle.vim
call vundle#begin()
let g:vundle#bundle_dir='C:/Users/Maciej/vimfiles/bundle'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/denite.nvim'
Plugin 'chrisbra/csv.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'edkolev/promptline.vim'
Plugin 'LucHermitte/lh-vim-lib' 
Plugin 'LucHermitte/lh-tags' 
Plugin 'LucHermitte/lh-style' 
Plugin 'LucHermitte/lh-dev' 
Plugin 'LucHermitte/lh-brackets' 
Plugin 'LucHermitte/searchInRuntime'
Plugin 'LucHermitte/mu-template'
Plugin 'tomtom/stakeholders_vim' 
Plugin 'LucHermitte/alternate-lite' 
Plugin 'LucHermitte/lh-cpp'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'vim-syntastic/syntastic'
call vundle#end()
filetype plugin indent on

set encoding=utf-8
set exrc 
set secure 
set tabstop=4 
set softtabstop=4
set shiftwidth=4 
set expandtab 
set smarttab
set autoindent
set si "smart indent
set nowrap
"set cindent
set hlsearch "highlight search results
set ruler
set colorcolumn=110 
highlight ColorColumn ctermbg=blue 
hi SpellBad ctermbg=4
hi Error ctermbg=4

set t_Co=256
syntax on
set number
" tags
set tags=./tags;/

"set relativenumber
set showmatch
set comments=s1:/*,mb:\ *,elx:\ */

" swap files
set swapfile
set dir=C:/Users/Maciej/vimfiles/tmp

let &path.="C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.13.26128/include,C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.13.26128/atlmfc/include,C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Auxiliary/VS/include,C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/ucrt,C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/um,C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/shared,C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/winrt,C:/Program Files (x86)/Windows Kits/NETFXSDK/4.6.1/Include/um,"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'


let g:ycm_global_ycm_extra_conf = 'C:/Users/Maciej/vimfiles/globals/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_server_python_interpreter = 'D:/Python27/python.exe'
nnoremap <Leader>d :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>D :YcmCompleter GoToDeclaration<CR>
nnoremap <C-.> :YcmCompleter FixIt<CR>

" lh-bracket config
let g:usemarks = 0
let g:mt_IDontWantTemplatesAutomaticallyInserted = 1

" no plugin mappings
noremap % v%
"inoremap { {}<Left>
"inoremap {<CR> {<CR>}<Esc>O
"inoremap {{ {
"inoremap {} {}
vnoremap // y/<C-R>"<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" omnisharp-vim
let g:OmniSharp_server_path = 'C:\Program Files\OmniSharp.Http.Driver\win7-x64\OmniSharp.exe'
let g:Omnisharp_stop_server = 2
let g:OmniSharp_selector_ui = 'ctrlp'

" syntastic
let g:syntastic_cs_checkers = ['code_checker']
