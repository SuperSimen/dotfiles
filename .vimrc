so /home/simen/dotfiles/plugins.vim



"
" Settings
"

runtime macros/matchit.vim
syntax on
colorscheme gruvbox
set background=dark
set autoread
set nrformats=
set incsearch
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
nnore <Leader>j :bn<CR>
nnore <Leader>k :bp<CR>
nnore <Leader>l :tabn<CR>
nnore <Leader>h :tabp<CR>
nnore <Leader>n :tabe<CR>
nnore <Leader>ev :e /home/simen/.vimrc<CR>
nnore <Leader>es :e /home/simen/.config/sxhkd/sxhkdrc<CR>
nnore <Leader>eb :e /home/simen/.config/bspwm/bspwmrc<CR>
nnore <Leader>em :call OpenMirrorFile()<CR>
nnore <Leader>bd :bp<bar>bd #<CR>
nnore <Leader>i iO
nnore <Leader>t :Tagbar<cr>
nnore <silent> <Leader>r :RunCode<CR>
nnore <Leader>f :find 
nnore <Leader>u :silent exec "!urxvt -cd %:p:h  &" <CR>
nnore <silent> <Leader>p :.w ! cat<CR>
nnore <silent> ]l :lnext<CR>
nnore <silent> [l :lprevious<CR>


"
" Syntastic
"

let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": ["jsx"] }


"
" Airline
" 

let g:airline_left_sep=''
let g:airline_right_sep=''
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode
set statusline=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


"
" UltiSnips
"

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/snippets/UltiSnips"


function! OpenMirrorFile()
    execute "vsp %:p:s?home/simen?home/simen/dotfiles?"
endfunction

set suffixesadd+=.php,.js,.jsx

let g:pathfinder_include='/home/simen/Dropbox/documents,
            \/home/simen/.vim/bundle/vim-pathfinder/**,
            \/home/simen/.vim/bundle/vim-run/**,
            \/home/simen/.vim/bundle/vim-cold-turkey/**,
            \/home/simen/.vim/bundle/vim-shell/**,
            \/home/simen/.vim/bundle/vim-smart-object/**,
            \/home/simen/.vim/bundle/vim-sessions/**,
            \/home/simen/.vim/bundle/vim-flack/**,
            \/home/simen/.vim/bundle/snippets'

function! s:SudoSave()
    exe ":w ! sudo tee % > /dev/null"
endfunction

com! -nargs=0 W :call s:SudoSave()
com! -nargs=0 Snippets :call UltiSnips#ListSnippets()

let &sessionoptions = substitute(&sessionoptions, 'options,', '', '')

let g:smart_object_commands = 'c,d,y'
let g:smart_object_blocks = '(),[],{}'

