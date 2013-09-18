set nocompatible
call pathogen#infect()

set nobackup
set nowritebackup
set noswapfile

scriptencoding utf-8
" set spell

" INDENTS
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on

" SEARCH
set incsearch
set hlsearch
set wrapscan
set ignorecase
set smartcase

" APPEARANCE
syntax enable
colorscheme molokai 
set vb t_vb= " Disable visual bell

set laststatus=2 " Always show status bar
set statusline=\ "
set statusline+=%f\ " file name
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

set number                              " Enable line numbers
set numberwidth=3                       " Set line number column width 

set list listchars=tab:»·,trail:·,eol:¶     " visible whitespace characters

set wildmenu
set wildmode=list:longest,full

" =================
" KEYBOARD MAPPINGS
" =================
set backspace=indent,eol,start
let mapleader = ","

"Use 'jj' to exit insert mode
inoremap jj <esc>

"Clear highlights on escape
nnoremap <return> :noh<return><return>

"Mapping for quick directory change
map <leader>cd :cd %:p:h<CR>

"Move line by paragraph
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"Tab-style buffer switching
map <C-S-tab> :bprev<CR>
map <C-tab> :bnext<CR>

"Auto-complete
imap <C-space> <C-p>
imap <C-S-space> <C-n>

"Unicode shortcuts
" - lambda
inoremap <A-l> <C-v>u3bb<Space>
" - right arrow
inoremap <A--> <C-v>u2192<Space>

" =================
" PLUGIN CONFIG
" =================
let g:pandoc_no_folding = 1
let g:pandoc_no_empty_implicits = 1

map <leader>t :GhcModType<CR>
map <leader>not :GhcModTypeClear<CR>
