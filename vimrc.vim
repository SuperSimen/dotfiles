so /Users/simen/dotfiles/plugins.vim

runtime macros/matchit.vim
syntax on
colorscheme solarized
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
set backupcopy=yes

set timeoutlen=1000
set ttimeoutlen=10
set history=1000
set tabpagemax=50
set backspace=2
set completeopt-=preview
set directory=/Users/simen/.vim/temp"
set backupdir=/Users/simen/.vim/backup"
set undodir=/Users/simen/.vim/undo"
set backup
set undofile
set splitright
set splitbelow
set wildmenu
set wildignorecase



let mapleader = "\<Space>"

" nore , :
" nore : ,
nnore <silent> <c-j> <c-w>j
nnore <silent> <c-k> <c-w>k
nnore <silent> <c-h> <c-w>h
nnore <silent> <c-l> <c-w>l
nnore <C-e> 3<C-e>
nnore <C-y> 3<C-y>
nnore <Down> gj
nnore <Up> gk

cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

nnore <silent> <Leader>c :Relapse<CR>
vnore <silent> <Leader>c :Relapse<CR>
nnore <Leader>ep :e /Users/simen/dotfiles/plugins.vim<CR>
nnore <Leader>ev :e /Users/simen/dotfiles/vimrc.vim<CR>
nnore <Leader>i iO
nnore <Leader>h :tabp<CR>
nnore <Leader>j :bn<CR>
nnore <Leader>k :bp<CR>
nnore <Leader>l :tabn<CR>
nnore <Leader>t :tabe<CR>
nnore <silent> <Leader>r :RunCode<CR>
nnore <silent> <Leader>b :Buffers<cr>
nnore <silent> <Leader>f :call ProjectSearch()<cr>
nnore <Leader>p :Project ~/src/

com! -nargs=0 W :call s:SudoSave()
com! -nargs=0 ListSnippets :call UltiSnips#ListSnippets()
com! -nargs=1 -complete=file Project :call s:OpenProjectFile("<args>")
com! -nargs=0 Ground :call s:GroundToRoot()

fun! s:OpenProjectFile(file)
    exec "tabe " . a:file . " | lcd " . s:FindProjectPath(a:file)
endf



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
let g:UltiSnipsSnippetsDir = "~/.vim/plugged/snippets/UltiSnips"



function! OpenMirrorFile()
    execute "vsp %:p:s?Users/simen?Users/simen/dotfiles?"
endfunction

set suffixesadd+=.php,.js,.jsx

function! s:SudoSave()
    exe ":w ! sudo tee % > /dev/null"
endfunction



let &sessionoptions = substitute(&sessionoptions, 'options,', '', '')

let g:smart_object_commands = 'c,d,y'
let g:smart_object_blocks = '(),[],{}'


let g:deoplete#enable_at_startup = 1

let g:pathfinder_include='/Users/simen/Dropbox/documents,
             \/Users/simen/.vim/plugged/vim-pathfinder/**,
             \/Users/simen/.vim/plugged/vim-clojure/**,
             \/Users/simen/.vim/plugged/vim-run/**,
             \/Users/simen/.vim/plugged/vim-cold-turkey/**,
             \/Users/simen/.vim/plugged/vim-shell/**,
             \/Users/simen/.vim/plugged/vim-smart-object/**,
             \/Users/simen/.vim/plugged/vim-sessions/**,
             \/Users/simen/.vim/plugged/vim-flack/**,
             \/Users/simen/.vim/plugged/vim-delaware/**,
             \/Users/simen/.vim/plugged/vim-relapse/**'


let g:fzf_layout = { 'down': '~15%' }

com! -nargs=1 Ag :call fzf#vim#ag_raw('--follow <args>')

fun! ProjectSearch() 
    exec 'Files ' . s:FindProjectPath()
endf

fun! s:GroundToRoot()
    exec "lcd " . s:FindProjectPath()
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
