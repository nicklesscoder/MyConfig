
autocmd! bufwritepost .vimrc source %
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

syntax enable

set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set mouse=a

set shiftwidth=2
set tabstop=2
set softtabstop=4
set expandtab
set smarttab
set ic
set backspace=2
set number
set showcmd
set showmode
set hlsearch
set incsearch
set scrolloff=5
set tw=79
set laststatus=2
set tags=tags;/

fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

highlight PmenuSel ctermfg=blue ctermbg=grey
execute pathogen#infect()
