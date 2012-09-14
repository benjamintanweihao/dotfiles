set nocompatible
call pathogen#infect()
call pathogen#helptags()
syntax on
syntax enable
filetype plugin indent on
set hidden
set ruler
set tabstop=2
set backspace=indent,eol,start
set autoindent
set nowrap
set copyindent
set number
set mouse=a
set shiftwidth=2
set laststatus=2
set shiftround
set ignorecase
set smartcase
set smarttab
set encoding=utf-8
set hlsearch
set incsearch
set title
set visualbell
set noerrorbells
set history=1000
set undolevels=1000
set nobackup
set noswapfile
set encoding=utf-8
set shortmess+=I
set foldmethod=indent 
set foldlevelstart=20
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.bmp,*.avi,*.mkv,*.mov,*.mp3
set wildignore+=*.o,*.out,*.obj,.git,*.hg,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.exe,*.pyc,*.elc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/public/*,*/tmp/*,*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,
			\*.lock
set wildignore+=*.swp,*~,._*,.DS_Store,*/.vim/undo/*

" Make vim sexy with Solarized
set background=dark
colorscheme solarized
set t_Co=256

" Life changing mapping goes here.
nnoremap ; :
let mapleader = ","

if has("gui_running")
	set guioptions=egmrt
endif

" Neocomplcache 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
if !exists('g:neocomplcache_keyword_patterns')
	let g:neocomplcache_keyword_patterns = {}
endif

" Cycle splits with <Tab>
map	<Tab>	<C-W>w 

" Make vim-powerline sexy
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
let g:neocomplcache_enable_auto_select = 1
let g:Powerline_cache_enabled = 0
let g:Powerline_symbols="fancy"

inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" Open routes.rb and Gemfile
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>

" Open files with <C-p> 
map <C-p> :ClearAllCtrlPCaches<cr>\|:CtrlP<cr>

" <CR> clears highlighted search results
:nnoremap <CR> :nohlsearch<cr>

" Easily switch previous window <leader><leader>
noremap <leader><leader> <c-^>

" Set ctags file. (I think Rails.vim already has this functionality
set tags=./tags
set grepprg=ack

" Align equals and colons
if exists(":Tabularize")
  nmap <Leader>== :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Be good - Embrace hjkl and abandon arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
