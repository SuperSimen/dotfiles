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
set splitbelow
set wildmenu
set wildignorecase



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

cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

nnore <silent> <Leader>c :Relapse<CR>
vnore <silent> <Leader>c :Relapse<CR>
nnore <Leader>eb :e /home/simen/.config/bspwm/bspwmrc<CR>
nnore <Leader>em :call OpenMirrorFile()<CR>
nnore <Leader>ep :e /home/simen/dotfiles/plugins.vim<CR>
nnore <Leader>es :e /home/simen/.config/sxhkd/sxhkdrc<CR>
nnore <Leader>eb :e /home/simen/.config/bspwm/bspwmrc<CR>
nnore <Leader>et :e /home/simen/.config/termite/config<CR>
nnore <Leader>ev :e /home/simen/dotfiles/vimrc.vim<CR>
nnore <Leader>i iO
nnore <Leader>h :tabp<CR>
nnore <Leader>j :bn<CR>
nnore <Leader>k :bp<CR>
nnore <Leader>l :tabn<CR>
nnore <Leader>t :tabe<CR>
nnore <Leader>em :call OpenMirrorFile()<CR>
nnore <silent> <Leader>r :RunCode<CR>
nnore <silent> <Leader>b :Buffers<cr>
nnore <silent> <Leader>f :call ProjectSearch()<cr>
nnore <silent> <Leader>d :Delaware<cr>
nnore <silent> <Leader>u :call FloatingTerminal()<CR>
nnore <silent> <Leader><S-u> :!termite -d %:p:h &<CR>
nnore <silent> <Leader>r :RunCode<CR>
nnore <Leader>p :Project ~/src/

com! -nargs=0 W :call s:SudoSave()
com! -nargs=0 ListSnippets :call UltiSnips#ListSnippets()
com! -nargs=1 -complete=file Project :call s:OpenProjectFile("<args>")

fun! s:OpenProjectFile(file)
    exec "tabe " . a:file . " | lcd " . s:FindProjectPath(a:file)
endf


if has('nvim')
    tnore <Esc> <c-\><c-n>
endif



"
" Syntastic
"

let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": ["jsx"] }
" let g:syntastic_javascript_checkers = ['eslint']


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



let &sessionoptions = substitute(&sessionoptions, 'options,', '', '')

let g:smart_object_commands = 'c,d,y'
let g:smart_object_blocks = '(),[],{}'


hi Normal ctermbg=NONE

function! FloatingTerminal()
    silent exec "!floating-terminal -d %:p:h &" 
endfunction

let g:deoplete#enable_at_startup = 1

let &path='/home/simen/Dropbox/documents,
             \/home/simen/.config/nvim/plugged/vim-pathfinder/**,
             \/home/simen/.config/nvim/plugged/vim-run/**,
             \/home/simen/.config/nvim/plugged/vim-cold-turkey/**,
             \/home/simen/.config/nvim/plugged/vim-shell/**,
             \/home/simen/.config/nvim/plugged/vim-smart-object/**,
             \/home/simen/.config/nvim/plugged/vim-sessions/**,
             \/home/simen/.config/nvim/plugged/vim-flack/**,
             \/home/simen/.config/nvim/plugged/vim-delaware/**,
             \/home/simen/.config/nvim/plugged/vim-relapse/**'


let g:fzf_layout = { 'down': '~15%' }


fun! ProjectSearch() 
    exec 'Files ' . s:FindProjectPath()
endf

fun! s:FindProjectPath(...)
    let directory = a:0 == 1 ? a:1 : getcwd()
    let filePath = fnamemodify(directory, ':p')

    let path = finddir('.git', filePath . ';~/')
    if len(path)
        let path = fnamemodify(path, ':h')
    else
        let path = fnamemodify(filePath, ':p')
    endif
    let path = fnamemodify(path, ':p')
    return path
endf
