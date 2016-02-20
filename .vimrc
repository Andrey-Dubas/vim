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
so ~/.vim/vimrc_scripts/vundle_plugin_list
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

function! PythonSettings()
        :NERDTree 
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab

	set colorcolumn=80
	map <F3> :NERDTreeToggle<CR>
	let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  
	highlight ColorColumn ctermbg=darkgray
	colorscheme 

	" switch off the autocomplete (jedi-vim is used)
        let g:pymode_rope = 0
	let g:pymode_rope_completion = 0
	let g:pymode_rope_complete_on_dot = 0

	" doc
	let g:pymode_doc = 0
	let g:pymode_doc_key = 'K'

	" code check
	let g:pymode_lint = 1
	let g:pymode_lint_checker = "pyflakes,pep8"
	let g:pymode_lint_ignore="E501,W601,C0110"


	" code check after save
	let g:pymode_lint_write = 1

	let g:pymode_virtualenv = 1

	" breakpoints settings
	let g:pymode_breakpoint = 1
	let g:pymode_breakpoint_key = '<leader>b'

	" syntax highlight
	let g:pymode_syntax = 1
	let g:pymode_syntax_all = 1
	let g:pymode_syntax_indent_errors = g:pymode_syntax_all
	let g:pymode_syntax_space_errors = g:pymode_syntax_all
	let g:pymode_run = 0

	nnoremap <F5> :ConqueTermSplit ipython<CR>

	" а debug-mode on <F6>
	nnoremap <F6> :exe "ConqueTermSplit ipython " . expand("%")<CR>
	let g:ConqueTerm_StartMessages = 0

endfunction

fu! JsSettings()
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	let g:syntastic_check_on_open=1
	let g:ycm_add_preview_to_completeopt=0
	let g:ycm_confirm_extra_conf=0
	set completeopt-=preview
endfunction

set nu
colorscheme desert

autocmd BufNewFile,BufRead *.h,*.cpp setfiletype cpp
autocmd BufNewFile,BufRead *.js setfiletype js 

autocmd Filetype cpp call CppSettings() 
au Filetype python :call PythonSettings() 
autocmd Filetype javascript :call JsSettings() 
