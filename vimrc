"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
"execute pathogen#infect()
"filetype plugin indent on

so ~/.vim/templates.ar.vim

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
	let &t_Co=256
endif

if has("gui_running")
	colorscheme default
else
	colorscheme default
endif
       
set number
set hlsearch
"set smartindent
set cursorline
set wildmenu
set autoindent
set incsearch
syntax on 
"tabstop - set the number of columns a tab counts for. This is the only command that affects how the existing text is displayed.
"expandtab - inserts <tabstop> number of spaces for each press of tab. Substituting spaces instead of tabs is used for java like languages, javascript etc. If not set it doesn't substitute space for tabs. 
"set tabstop=2
autocmd FileType make set tabstop=8 noexpandtab
autocmd FileType javascript set tabstop=2 expandtab shiftwidth=2
autocmd FileType cpp set tabstop=2 expandtab
autocmd FileType python set tabstop=2 expandtab 
autocmd FileType css set tabstop=2 expandtab shiftwidth=2
autocmd FileType html,xml, source ~/.vim/scripts/closetag.vim 
autocmd FileType txt set tabstop=2 
"autocmd FileType python colorscheme slate
autocmd FileType lisp set tabstop=8 noexpandtab
set ls=2

set autochdir "change directory automatically. handy in gvim. 

:nmap \a :set autoindent!<CR>
:nmap \l :set number!<CR>
:nmap \h :sp
:nmap \v :vsp
:nmap \q :noh<CR>
:imap jk <Esc>
:nmap j gj
:nmap k gk

"copy a word
:nmap <C-c> byw

:nmap ;; <Esc>:w<CR>
:imap jj <C-p>
noremap H ^
noremap L $

inoremap 	{<CR> {<CR>}<Esc>O
inoremap 	( ()<Left>
inoremap 	() ()
inoremap 	" ""<Left>

"Enter paste mode. 
"There cannot be a direct auto exit from paste mode as not having that is the whole point of using paste mode"
:nmap pp  :set paste<CR>
