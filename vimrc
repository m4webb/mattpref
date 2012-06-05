"Matthew's vimrc

au BufWinEnter * silent loadview 
au BufWinLeave * mkview 
call pathogen#infect()
map Q gq
set autoindent
set backspace=indent,eol,start
set expandtab
set history=50
set incsearch
set laststatus=2
set mouse=a
set nobackup
set nocompatible
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set shiftwidth=4
set showcmd
set showmode
set spell
set statusline+=\ [%{&ff}/%Y]            " filetype
set statusline+=\ [%{getcwd()}]          " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
set statusline=%<%f\                     " Filename
set statusline+=%{fugitive#statusline()} "  Git Hotness
set statusline+=%w%h%m%r                 " Options
set tabpagemax=15
set tabstop=4
set tw=80
syntax on

inoremap <C-h> <Home>
inoremap <C-l> <End>
inoremap <C-U> <C-G>u<C-U>
inoremap <C-x> <Delete>
nnoremap <C-h> 0
nnoremap <C-h> <Home>
nnoremap <C-i> i
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-l> <End>
nnoremap j jzz
nnoremap k kzz
nnoremap <silent> <C-m> :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <silent> <C-n> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
onoremap <C-h> <Home>
onoremap <C-l> <End>
vnoremap <C-h> <Home>
vnoremap <C-l> <End>

"-----------------------------------------------------------------------------"
"Others
"-----------------------------------------------------------------------------"

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
