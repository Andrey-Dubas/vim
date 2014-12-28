"to install Vundle:
"mkdir ~/.vim/bundle
"git clone git://github.com/gmarik/Vundle.git ~/.vimrc/bundle/Vundle.vim

"for Vundle

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"common
Plugin 'scrooloose/nerdtree'
"g++
"Plugin 

call vundle#end()
filetype plugin indent on


fu! CppSettings()
        :NERDTree 
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab

	let &path.="src/include,/usr/include/AL,"

	set colorcolumn=110
	highlight ColorColumn ctermbg=darkgray
	colorscheme 
endfunction

set nu
colorscheme desert
filetype on

autocmd BufNewFile,BufRead *.h,*.cpp setfiletype cpp
autocmd Filetype cpp call CppSettings() 

