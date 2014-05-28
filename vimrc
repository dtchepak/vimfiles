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
let g:slime_target = "tmux"
" let g:slime_paste_file = "$HOME/.slime_paste"
let g:pandoc_no_folding = 1
let g:pandoc_no_empty_implicits = 1

map <leader>t :GhcModType<CR>
map <leader>not :GhcModTypeClear<CR>

let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
    \ }
