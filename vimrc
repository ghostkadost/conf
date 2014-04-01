syntax on
set t_Co=256
colorscheme zenburn
set guifont=Inconsolata\ Medium\ 11
set ruler
set textwidth=80
set incsearch
set nu
set colorcolumn=80

set tabstop=8
set softtabstop=4
set shiftwidth=4
" Do not set "expandtabs", it will prevent you from properly formatting code.
set noexpandtab

set cinoptions=(0

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  if v:version > 600
    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on
  endif

  autocmd BufNewFile,BufReadPre,BufEnter,FileReadPre *.c,*.c[cpx]?[px]?,*.h[px]?  set wrap cin ai

  " For all text files set 'textwidth' to 79 characters.
  autocmd FileType text setlocal textwidth=79
  autocmd BufNewFile,BufRead *.txt setlocal textwidth=79
  "  autocmd FileType python setlocal set expandtab

endif " has("autocmd")

set showmode

" Make "show list" more useful.
set listchars+=tab:^-
set listchars+=trail:`

set showcmd
set hlsearch
set incsearch
set showmatch

