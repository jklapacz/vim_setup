execute pathogen#infect()
"Use pathogen
filetype on "File type detection
syntax on  "Syntax highlighting
colorscheme Tomorrow-Night

set guifont=Menlo\ Regular:h18 "Set the font

"Set a default size and denote a colored column (for keeping things clean)
"set lines=35
set columns=150
set colorcolumn=90
"set line numbers
set number

"Vim default leaderkey is '\'
"	Remap the leaderkey
let mapleader=" "

"Avoid reloading vim everytime vimrc changes
"	Map to <leader>s
map <leader>s :source ~/.vimrc<CR>

"Set more info to store in memory
set hidden
set history=100

"Set some indent logic
filetype indent on
set nowrap "Disable line wrapping
set tabstop=2 "How many spaces == tab
set shiftwidth=2 "How many spaces == tab shifting '<<' or '>>'
set expandtab "Instead of a tab character, expands to spaces
						  "To use real tab character, input Ctrl-V<Tab>
set smartindent "Automatically inserts next level of indenting in some cases
set autoindent "Carry over indentation of previous line

"Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"Highlight found words
set hlsearch

"Cancel a search with escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"Reopen previous file
nnoremap <Leader><Leader> :e#<CR>

"Show matching parenthesis
set showmatch

"Load pathogen bundles
"call pathogen#runtime_append_all_bundles()

" ==============================
"    command-t fuzzy search
" ==============================
" ignore searching certain files
set wildignore+=*.log,*.sql,*.cache
" Reindex everything quickly
noremap <Leader>r :CommandTFlush<CR>

" ==============================
"       nerd commenter
" ==============================
" required for nerd commenter
filetype plugin on

