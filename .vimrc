"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"For updates please check https://erethon.com and https://github.com/erethon
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugins and Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'kien/ctrlp.vim'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-fugitive'

"call vundle#end()
filetype plugin indent on

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
autocmd BufWritePre *.conf %s/\s\+$//e

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
  highlight ColorColumn ctermbg=23
  call matchadd('ColorColumn', '\%80v', 100)
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map <leader> to ";"
let mapleader = ";"

"Mapping 0 to go to first non-blank character of line
map 0 ^

"Use Ctrl + t for opening a new tab
nnoremap <c-t> :tabnew
"Use Ctrl + h/l for previous/next tab
nnoremap <c-h> gT
nnoremap <c-l> gt

"Use <Space> to go half-page down
nnoremap <Space> <c-d>

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

" Set options to comply with the linux kernel coding style
function Kernel()
    set noexpandtab
    set tabstop=8
    set softtabstop=8
    set shiftwidth=8
    set cinoptions=:0,l1,t0,g0,(0
endfunction

"Go in kernel mode coding style
map <F8> :call Kernel() <Enter>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nomodeline
set cursorline

" Greek mapping for normal mode
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR
set langmap+=ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj
set langmap+=κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz

"Enable mouse in vim
set mouse=a
