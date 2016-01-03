set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/home/simen/.vim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('/home/simen/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/syntastic'
Plugin 'rstacruz/sparkup'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/unite.vim'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'neovimhaskell/haskell-vim'
" Plugin 'itchyny/vim-haskell-indent'

" Plugin 'tpope/vim-vinegar.git'
" Plugin 'wincent/command-t'
" Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
" Plugin 'xolox/vim-easytags'
" Plugin 'xolox/vim-misc'
" Plugin 'StanAngeloff/php.vim'
" Plugin 'shawncplus/phpcomplete.vim'

" Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
" Plugin 'majutsushi/tagbar'
" Plugin 'awk.vim'
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

" Plugin 'whatyouhide/vim-gotham'
Plugin 'chriskempson/base16-vim'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'chriskempson/base16-vim'
" Plugin 'w0ng/vim-hybrid'
" Plugin 'tomasr/molokai'
" Plugin 'flazz/vim-colorschemes'
" Plugin 'tomasr/molokai'
" Plugin 'nanotech/jellybeans.vim'
" Plugin 'Lokaltog/vim-distinguished'
" Plugin 'tpope/vim-vividchalk'

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

runtime macros/matchit.vim

colorscheme base16-ashes
set background=dark

syntax on

set autoread
set nrformats=
set incsearch
set hidden
set ignorecase
set smartcase


set shiftwidth=4
set expandtab
" set softtabstop=4
" set noexpandtab
set tabstop=4
set ruler
set number
set showcmd
set wrap
set mouse=a
set ttymouse=urxvt
set timeoutlen=1000
set ttimeoutlen=10
set history=1000
set tabpagemax=50
set backspace=2
"set guifont=Menlo\ Regular:h14
set noantialias
set completeopt-=preview
" set relativenumber
" set foldcolumn=1
set wildmenu
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

set directory=/home/simen/.vim/temp"
set backupdir=/home/simen/.vim/backup"
set undodir=/home/simen/.vim/undo"
set backup
set undofile

let mapleader = "\<Space>"

nore , :
" nore : ,

nnore <c-j> <c-w>j
nnore <c-k> <c-w>k
nnore <c-h> <c-w>h
nnore <c-l> <c-w>l
nnore <C-e> 3<C-e>
nnore <C-y> 3<C-y>
nnore <Down> gj
nnore <Up> gk
"nnore <BS> gg
nnore <Leader>k :bp<CR>
nnore <Leader>j :bn<CR>
nnore <Leader>l :tabn<CR>
nnore <Leader>h :tabp<CR>
nnore <Leader>n :tabe<CR>
nnore <Leader>td :TernDef<CR>
nnore <Leader>tb :Tagbar<CR>
nnore <Leader>ev :e /home/simen/.vimrc<CR>
nnore <Leader>es :e /home/simen/.config/sxhkd/sxhkdrc<CR>
nnore <Leader>eb :e /home/simen/.config/bspwm/bspwmrc<CR>
nnore <Leader>bd :bp<bar>bd #<CR>
nnore <Leader>i iO
" nnore <Leader>a H :vertical resize 30<CR>
" nnore <Leader>ø L :vertical resize 30<CR>
" nnore <Leader>f :vertical topleft Vexplore <bar> vertical resize 30<CR>
"
"let g:netrw_list_hide= '^\..*'
"let g:netrw_liststyle=0
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_no_default_key_mappings = 1
nmap <CR> <Plug>(vimfiler_cd_or_edit)

" let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
"let g:syntastic_mode_map={ 'mode': 'active','active_filetypes': [],'passive_filetypes': ['html'] }
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

" let g:easytags_async = 1
" let g:easytags_auto_highlight = 0

let g:airline_left_sep=''
let g:airline_right_sep=''

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" vnore y y`]
" vnore p p`]
" nnore p p`]

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

let g:CommandTFileScanner="find"

"let &path=getcwd() . "/**"
let &path="/home/simen/Dropbox/documents/**," . getcwd() . "/**"



