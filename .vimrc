"For updates please check https://ererthon.com and https://github.com/erethon
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Visual stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn syntax highlighting on
syntax on

"Insert 8 spaces when tab is pressed (if not softtabstop is set)
set tabstop=8
"Insert space characters when tab is pressed
set expandtab
"Insert 4 spaces when tab is pressed (overrides tabstop if expandtab is set)
set softtabstop=4
"Controls how many spaces are indented when > and < is used
set shiftwidth=4

"Remove trailing whitespace for .py/.yml/.init/.rst/.spec files
autocmd BufWritePre *.py :%s/\s\+$//e                                           
autocmd BufWritePre *.yml :%s/\s\+$//e                                          
autocmd BufWritePre *.init :%s/\s\+$//e                                         
autocmd BufWritePre *.rst %s/\s\+$//e                                           
autocmd BufWritePre *.spec %s/\s\+$//e   

"Show line numbers
set number
"Show ruler on bottom of vim
set ruler

"Ignore case when searching
set ignorecase
"Set smartcace on (aka step will find stepbrother and Steps, but Step wont
"find stepbrother)
set smartcase
"Highlight search results
set hlsearch

set showmatch
set mat=2

"Set colorscheme
colorscheme pychimp

"Show a blue vertical line on the 80th character (pep8 compliant)
if exists('+colorcolumn')
  set colorcolumn=80
  highlight ColorColumn ctermbg=23
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping 0 to go to first non-blank character of line
map 0 ^

"Use Ctrl + t for opening a new tab
nnoremap <c-t> :tabnew
"Use Ctrl + h/l for previous/next tab
nnoremap <c-h> gT
nnoremap <c-l> gt

"Use <Space> to go half-page down
nnoremap <Space> <c-d>

"Use ';' instead of ':'
nnoremap ; :

"Faster Normal Mode
imap ii <Esc>

"Pep8 checking
map <F5> :!pep8 % <Enter>

"Git blame                                                                      
map <F6> :!git blame % <Enter>                                                  
                                                                                
"Check number of characters in file                                             
map <F4> :!wc -m %<CR>                                                          
                                                                                
"Easy set paste and set nopaste                                                 
set pastetoggle=<F2>                                                            
                                                                                
"Spell checking                                                                 
map <F7> :set spell<CR> 

"Enable mouse in vim
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Random Stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Enable pathogen add ons
"execute pathogen#infect()

"Start CtrlP                                                                    
"set runtimepath^=~/.vim/bundle/ctrlp.vim

filetype indent plugin on
filetype indent on