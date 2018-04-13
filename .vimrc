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
Bundle 'edkolev/promptline.vim'
call vundle#end()
filetype plugin indent on

set encoding=utf-8
if has("multi_byte")
	if &termencoding == ""
		let &termencoding = &encoding
	endif
	setglobal fileencoding=utf-8 bomb
	set fileencodings=ucs-bom,utf-8
endif  

set exrc 
set secure 
set tabstop=4 
set softtabstop=4
set shiftwidth=4 
set noexpandtab 
set autoindent
set cindent
inoremap { {<CR>}<up><end><CR>
set colorcolumn=110 
highlight ColorColumn ctermbg=blue  
augroup project 
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c,*.cc,*.cpp set filetype=c.doxygen 
augroup END  

set t_Co=256
syntax on
set number
set showmatch
set comments=s1:/*,mb:\ *,elx:\ */

let &path.="C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.13.26128/include,C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.13.26128/atlmfc/include,C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Auxiliary/VS/include,C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/ucrt,C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/um,C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/shared,C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/winrt,C:/Program Files (x86)/Windows Kits/NETFXSDK/4.6.1/Include/um,"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


let g:ycm_global_ycm_extra_conf = 'C:/Users/Maciej/vimfiles/globals/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_server_python_interpreter = 'D:/Python27/python.exe'
