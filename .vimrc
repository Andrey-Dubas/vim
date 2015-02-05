"to install Vundle:
"mkdir ~/.vim/bundle
"git clone git://github.com/gmarik/Vundle.git ~/.vimrc/bundle/Vundle.vim

"for Vundle

" libs for python: pip install pyflakes pep8 pylint ipython 
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'		" let Vundle manage Vundle, required
"common
Plugin 'scrooloose/nerdtree'

Plugin 'majutsushi/tagbar'          	" Class/module browser
"------------------=== Other ===----------------------
"Plugin 'bling/vim-airline'   	    	" Lean & mean status/tabline for vim
"Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
"Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
"Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML
"tags, and more
"
""--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'		" Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
Plugin 'tomtom/tlib_vim'		" dependencies #2
Plugin 'honza/vim-snippets'		" snippets repo


"g++
"Plugin 
"
"---------------=== Languages support ===-------------
"" --- Python ---
Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more) screencast to view: https://www.youtube.com/watch?v=67OZNp9Z0CQ
Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

call vundle#end()
filetype plugin indent on


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

