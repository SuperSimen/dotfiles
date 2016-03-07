"
" Plugins
"

set nocompatible
filetype off

set rtp+=/home/simen/.vim/bundle/Vundle.vim
call vundle#begin('/home/simen/.vim/bundle')

Plugin 'gmarik/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'scrooloose/syntastic'
Plugin 'rstacruz/sparkup'
Plugin 'Shougo/unite.vim'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'majutsushi/tagbar'
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'tpope/vim-fugitive'

Plugin 'xolox/vim-misc'
Plugin 'SuperSimen/vimfiler.vim'
Plugin 'SuperSimen/vim-pathfinder'
Plugin 'SuperSimen/vim-twig'
Plugin 'SuperSimen/vim-run'

" Plugin 'wincent/command-t'
" Plugin 'kien/ctrlp.vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'xolox/vim-easytags'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'flazz/vim-colorschemes'
" Plugin 'awk.vim'
" Plugin 'vim-scripts/ShowMarks'

Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on




"
" Settings
"

runtime macros/matchit.vim
syntax on
colorscheme base16-harmonic16
set background=dark
set autoread
set nrformats=
set incsearch
set hidden
set ignorecase
set smartcase
set shiftwidth=4
set tabstop=4
set expandtab
"set noexpandtab
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
set completeopt-=preview
set directory=/home/simen/.vim/temp"
set backupdir=/home/simen/.vim/backup"
set undodir=/home/simen/.vim/undo"
set backup
set undofile
set splitright
set wildmenu
set wildignorecase
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>


"
" Keymaps
"

let mapleader = "\<Space>"

nore , :
nore : ,
nnore <c-j> <c-w>j
nnore <c-k> <c-w>k
nnore <c-h> <c-w>h
nnore <c-l> <c-w>l
nnore <C-e> 3<C-e>
nnore <C-y> 3<C-y>
nnore <Down> gj
nnore <Up> gk
nnore <Leader>j :bp<CR>
nnore <Leader>k :bn<CR>
nnore <Leader>l :tabn<CR>
nnore <Leader>h :tabp<CR>
nnore <Leader>n :tabe<CR>
nnore <Leader>ev :e /home/simen/.vimrc<CR>
nnore <Leader>es :e /home/simen/.config/sxhkd/sxhkdrc<CR>
nnore <Leader>eb :e /home/simen/.config/bspwm/bspwmrc<CR>
nnore <Leader>em :call OpenMirrorFile()<CR>
nnore <Leader>bd :bp<bar>bd #<CR>
nnore <Leader>i iO
nnore <Leader>r :RunCode<CR>

nnore <Leader>dd oLog::debug();hi
nnore <Leader>dw oLog::warning();hi

"
" Vimfiler
"

let g:vimfiler_as_default_explorer = 1
" let g:vimfiler_no_default_key_mappings = 1
let g:vimfiler_custom_key_mappings = 1
" nmap <CR> <Plug>(vimfiler_cd_or_edit)


"
" Syntastic
"

let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq = 0


"
" Airline
" 

let g:airline_left_sep=''
let g:airline_right_sep=''
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


"
" UltiSnips
"

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"


function! OpenMirrorFile()
    execute "vsp %:p:s?home/simen?home/simen/dotfiles?"
endfunction

set suffixesadd+=.php,.js
