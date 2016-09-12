so /home/simen/dotfiles/plugins.vim

runtime macros/matchit.vim
syntax on
colorscheme gruvbox
set background=dark
set autoread
set nrformats=
set incsearch
set nohlsearch
set hidden
set ignorecase
set smartcase
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
"set noexpandtab
set ruler
set number
set showcmd
set wrap
set mouse=a

if !has('nvim')
    set ttymouse=urxvt
endif

set timeoutlen=1000
set ttimeoutlen=10
set history=1000
set tabpagemax=50
set backspace=2
set completeopt-=preview
set directory=/home/simen/.config/nvim/temp"
set backupdir=/home/simen/.config/nvim/backup"
set undodir=/home/simen/.config/nvim/undo"
set backup
set undofile
set splitright
set wildmenu
set wildignorecase
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>


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

nnore <Leader>bd :bp<bar>bd #<CR>
nnore <Leader>c :Eval<CR>
nnore <Leader>eb :e /home/simen/.config/bspwm/bspwmrc<CR>
nnore <Leader>em :call OpenMirrorFile()<CR>
nnore <Leader>ep :e /home/simen/dotfiles/plugins.vim<CR>
nnore <Leader>es :e /home/simen/.config/sxhkd/sxhkdrc<CR>
nnore <Leader>eb :e /home/simen/.config/bspwm/bspwmrc<CR>
nnore <Leader>ev :e /home/simen/dotfiles/vimrc.vim<CR>
nnore <Leader>f :find 
nnore <Leader>h :tabp<CR>
nnore <Leader>i iO
nnore <Leader>j :bn<CR>
nnore <Leader>k :bp<CR>
nnore <Leader>l :tabn<CR>
nnore <Leader>n :tabe<CR>
nnore <Leader>em :call OpenMirrorFile()<CR>
nnore <Leader>bd :bp<bar>bd #<CR>
nnore <Leader>i iO
nnore <Leader>t :Tagbar<cr>
nnore <silent> <Leader>r :RunCode<CR>
" nnore <Leader>f :find 
nnore <Leader>f :Files<cr>
nnore <Leader>u :call FloatingTerminal()<CR>
nnore <silent> <Leader>p :.w ! cat<CR>
nnore <silent> <Leader>r :RunCode<CR>
nnore <silent> ]l :lnext<CR>
nnore <silent> [l :lprevious<CR>

if has('nvim')
    tnore <Esc> <c-\><c-n>
    " tnore <c-j> <c-\><c-n><c-w>j
    " tnore <c-k> <c-\><c-n><c-w>k
    " tnore <c-h> <c-\><c-n><c-w>h
    " tnore <c-l> <c-\><c-n><c-w>l
endif



"
" Syntastic
"

let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": ["javascript","jsx"] }
let g:syntastic_javascript_checkers = ['eslint']


let g:airline_left_sep=''
let g:airline_right_sep=''
set laststatus=2   " Always show the statusline


let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetsDir = "~/.config/nvim/plugged/snippets/UltiSnips"



function! OpenMirrorFile()
    execute "vsp %:p:s?home/simen?home/simen/dotfiles?"
endfunction

set suffixesadd+=.php,.js,.jsx

function! s:SudoSave()
    exe ":w ! sudo tee % > /dev/null"
endfunction

com! -nargs=0 W :call s:SudoSave()
com! -nargs=0 Snippets :call UltiSnips#ListSnippets()

let &sessionoptions = substitute(&sessionoptions, 'options,', '', '')

let g:smart_object_commands = 'c,d,y'
let g:smart_object_blocks = '(),[],{}'


com! -nargs=0 Pig :Piggieback 9001
hi Normal ctermbg=NONE

function! FloatingTerminal()
    silent exec "!floating-terminal -cd %:p:h &" 
    exec "redraw!"
endfunction

let g:deoplete#enable_at_startup = 1
