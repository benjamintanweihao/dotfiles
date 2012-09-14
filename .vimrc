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
set foldmethod=indent " Fold on syntax for ruby support.
set foldlevelstart=20
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.bmp,*.avi,*.mkv,*.mov,*.mp3
set wildignore+=*.o,*.out,*.obj,.git,*.hg,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.exe,*.pyc,*.elc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/public/*,*/tmp/*,*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,
			\*.lock
set wildignore+=*.swp,*~,._*,.DS_Store,*/.vim/undo/*
nnoremap ; :
set background=dark
colorscheme solarized
let mapleader = ","
if has("gui_running")
	set guioptions=egmrt
endif
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
if !exists('g:neocomplcache_keyword_patterns')
	let g:neocomplcache_keyword_patterns = {}
endif
set t_Co=256
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
let g:neocomplcache_enable_auto_select = 1
let g:Powerline_cache_enabled = 0
let g:Powerline_symbols="fancy"
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
"map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
"map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
" map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
" map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
" map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
" map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
" map <leader>gs :CommandTFlush<cr>\|:CommandT public/stylesheets<cr>
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
" Open files with <leader> f
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" " we set winheight to be huge before winminheight, the winminheight set will
" " fail.
set winheight=5
set winminheight=5
set winheight=999
:nnoremap <CR> :nohlsearch<cr>
noremap <leader><leader> <c-^>
let g:CommandTMaxFiles=500
set tags=./tags
set grepprg=ack
if exists(":Tabularize")
  nmap <Leader>== :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

