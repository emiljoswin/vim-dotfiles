execute pathogen#infect()

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
	set t_Co=256
endif

set number
set hlsearch
"set smartindent
"hi search ctermbg=11
colorscheme desert
set cursorline
set autoindent
set incsearch
syntax on 
"tabstop - set the number of columns a tab counts for. This is the only command that affects how the existing text is displayed.
"expandtab - inserts <tabstop> number of spaces for each press of tab. Substituting spaces instead of tabs is used for java like languages, javascript etc. If not set it doesn't substitute space for tabs. 
set tabstop=2
autocmd FileType make set tabstop=8 noexpandtab
autocmd FileType javascript set tabstop=2 expandtab
autocmd FileType cpp set tabstop=2 expandtab
autocmd FileType python set tabstop=2 expandtab 
autocmd FileType html,xml, source ~/.vim/scripts/closetag.vim 
"autocmd FileType python colorscheme slate
autocmd FileType lisp set tabstop=8 noexpandtab
set ls=2

set autochdir "change directory automatically. handy in gvim. 

:nmap \a :set autoindent!<CR>
:nmap \l :set number!<CR>
:nmap \q :noh<CR>
