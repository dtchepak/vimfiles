set vb t_vb= " Re-Disable visual bell

if has("win32")
    set guifont=Inconsolata\ Medium\ 14
else
    set guifont=Inconsolata:h16
endif
set antialias

" Hide toolbar and menus.
set guioptions-=T
set guioptions-=m

" Scrollbar is always off.
set guioptions-=rL

