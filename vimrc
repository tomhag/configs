"Copyright (c) 2016 Edvin Fladen

"VANILLA SETTINGS
"--------------------------------------------------------------------------------
	set nocompatible
	let mapleader =' '
	syntax on

"Find files
	set path+=**
	set wildmenu
	set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
"GUI
	set number
	set ruler
	set laststatus=2

"Cursor
	set cursorline
	highlight CursorLine ctermbg=Black ctermfg=None
	autocmd InsertEnter * highlight  CursorLine ctermbg=None ctermfg=None
	autocmd InsertLeave * highlight  CursorLine ctermbg=Black ctermfg=None

"Tabbing S+>>
	set tabstop=2
	set shiftwidth=2

"Show tabs and spaces
	nnoremap <Leader>< :set list listchars=tab:»·,trail:·,nbsp:·<CR>
	nnoremap <Leader>> :set nolist<CR>

"Search document
	set hlsearch
	nnoremap <Leader>, :noh<CR>
	set incsearch

"Pasting from clipboard
	set pastetoggle=<F2>
	vnoremap <C-c> "*y
	map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
	map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"

"PLUGINS
"--------------------------------------------------------------------------------
filetype off

" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/autoload')

	Plug 'altercation/vim-colors-solarized'
		let g:solarized_termcolors=16
		set background=dark

	Plug 'bling/vim-airline'
		let g:airline_powerline_fonts = 1

	Plug 'scrooloose/nerdtree'
		nnoremap <Leader>n :NERDTreeToggle<CR>

	Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
		nnoremap <Leader>c :FZF ~/Cloudstation<CR>
		nnoremap <Leader>d :FZF ~/Desktop<CR>
		nnoremap <Leader>f :FZF ~<CR> 

	Plug 'SirVer/ultisnips'
		let g:UltiSnipsExpandTrigger="<tab>"
		let g:UltiSnipsJumpForwardTrigger="<tab>"
		let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
		let g:UltiSnipsEditSplit="vertical"
	Plug 'ervandew/supertab'
	Plug 'honza/vim-snippets'

	Plug 'scrooloose/syntastic'
		set statusline+=%#warningmsg#
		set statusline+=%{SyntasticStatuslineFlag()}
		set statusline+=%*

		let g:syntastic_always_populate_loc_list = 1
		let g:syntastic_auto_loc_list = 1
		let g:syntastic_check_on_open = 1
		let g:syntastic_check_on_wq = 0
			
	Plug 'pangloss/vim-javascript'
	Plug 'mxw/vim-jsx'

	Plug 'vim-scripts/tComment'
	Plug 'tpope/vim-surround'

	Plug 'vimwiki/vimwiki'


call plug#end()
filetype plugin indent on

colorscheme solarized

 
