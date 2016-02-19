execute pathogen#infect()
syntax on

syntax enable
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
so .vim/vimrc_scripts/vundle_plugin_list
call vundle#end()
filetype on
filetype plugin on
filetype plugin indent on

" autocmd vimenter * TagbarToggle
set hlsearch
" let g:snippets_dir = "~/.vim/vim-snippets/snippets"

set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


fu! CppSettings()
        ":NERDTree 
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab

	let &path.="src/include,/usr/include/AL,"

	set colorcolumn=110
	highlight ColorColumn ctermbg=darkgray
	colorscheme 
endfunction

fu! PythonSettings()
        ":NERDTree 
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab

	set colorcolumn=80
	highlight ColorColumn ctermbg=darkgray
	colorscheme 
endfunction

set nu
colorscheme desert
filetype on

autocmd BufNewFile,BufRead *.h,*.cpp setfiletype cpp
autocmd Filetype cpp call CppSettings() 

