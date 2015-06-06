set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/home/simen/.vim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('/home/simen/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'wincent/command-t'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/syntastic'

" Plugin 'altercation/vim-colors-solarized'
Plugin 'whatyouhide/vim-gotham'
" Plugin 'chriskempson/base16-vim'
" Plugin 'w0ng/vim-hybrid'
" Plugin 'tomasr/molokai'
" Plugin 'flazz/vim-colorschemes'
" Plugin 'tomasr/molokai'
" Plugin 'nanotech/jellybeans.vim'
" Plugin 'Lokaltog/vim-distinguished'
" Plugin 'tpope/vim-vividchalk'

" Plugin 'rstacruz/sparkup'
" Plugin 'docunext/closetag.vim'
" Plugin 'Raimondi/delimitMate'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'vim-scripts/YankRing.vim'
" Plugin 'kien/ctrlp.vim'
" Plugin 'msanders/snipmate.vim'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'ervandew/supertab'
" Plugin 'vim-scripts/ShowMarks'
" Plugin 'vim-scripts/taglist.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let mapleader = "\<Space>"

set history=1000

set tabpagemax=50

syntax on

set autoread
set nrformats=
set incsearch
set hidden
set ignorecase
set expandtab
set softtabstop=4
set shiftwidth=4
set ruler
set number
set showcmd
set smartcase
set wrap
set mouse=a

set background=dark
" colorscheme base16-default
" colorscheme solarized

colorscheme gotham
" let g:solarized_termcolors=256
" let base16colorspace=256

hi ErrorMsg term=bold gui=bold
highlight Normal ctermbg=none

" if has('gui_running')
" else
	"colorscheme hybrid
" endif

set guifont=Menlo\ Regular:h13
set noantialias

set directory=/home/simen/.vim/temp"
set backupdir=/home/simen/.vim/backup"
set backup
set undodir=/home/simen/.vim/undo"
set undofile

nnore <silent> <Leader>h :bp<CR>
nnore <silent> <Leader>l :bn<CR>
nnore <silent> <Leader>k :tabn<CR>
nnore <silent> <Leader>j :tabp<CR>

nnore <c-j> <c-w>j
nnore <c-k> <c-w>k
nnore <c-h> <c-w>h
nnore <c-l> <c-w>l

nnore , :
nnore <silent> : ,

"inore <silent> <Down> <C-o>gj
"inore <silent> <Up> <C-o>gk
nnore <silent> <Down> gj
nnore <silent> <Up> gk

runtime macros/matchit.vim

nnore <silent> <C-n> :NERDTreeToggle<CR>

nnore <silent> <C-e> 3<C-e>
nnore <silent> <C-y> 3<C-y>

" setlocal spell spelllang=en 

" let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map={ 'mode': 'active','active_filetypes': [],'passive_filetypes': ['html'] }

let g:airline_left_sep=''
let g:airline_right_sep=''

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


vnore <silent> y y`]
vnore <silent> p p`]
nnore <silent> p p`]

" nnore <silent> <Leader>td :TernDef<CR>

nnore <silent> <CR> G
nnore <silent> <BS> gg

nmap <silent> <Leader>ev ,e /home/simen/.vimrc<CR>

set completeopt-=preview
" set relativenumber

let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" set spell spelllang=en_us

set backspace=2

cmap w!! w !sudo tee > /dev/null %
cmap ack Ack!

let g:CommandTFileScanner="find"

set foldcolumn=1
nnore <Leader>r iO
