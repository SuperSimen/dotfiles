so $HOME/dotfiles/plugins.vim



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
"set mouse=a
set backupcopy=yes

set timeoutlen=1000
set ttimeoutlen=10
set history=1000
set tabpagemax=50
set backspace=2
set completeopt-=preview

if has("win32")
    set directory=$HOME/vimfiles/temp
    set backupdir=$HOME/vimfiles/backup
    set undodir=$HOME/vimfiles/undo
else
    set directory=$HOME/.vim/temp
    set backupdir=$HOME/.vim/backup
    set undodir=$HOME/.vim/undo
endif

if has("gui")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guifont=Ubuntu_Mono:h12
endif


set backup
set undofile
set splitright
set splitbelow
set wildmenu
set wildignorecase



let mapleader = "\<Space>"

nore , :
nore : ,
nnore <silent> <c-j> <c-w>j
nnore <silent> <c-k> <c-w>k
nnore <silent> <c-h> <c-w>h
nnore <silent> <c-l> <c-w>l
nnore <Down> gj
nnore <Up> gk

cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

nnore <silent> <Leader>c :Relapse<CR>
vnore <silent> <Leader>c :Relapse<CR>
nnore <Leader>ep :e $HOME/dotfiles/plugins.vim<CR>
nnore <Leader>ev :e $HOME/dotfiles/vimrc.vim<CR>
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
nnore <Leader>o :NERDTreeToggle<cr>

com! -nargs=0 ListSnippets :call UltiSnips#ListSnippets()
com! -nargs=1 -complete=file Project :call g:OpenProjectFile('<args>')

fun! g:OpenProjectFile(file)
    let filePath = substitute(trim(a:file), '\([^/]$\)', '\1/', '')
    exec "tabe " . filePath . " | lcd " . s:FindProjectPath(filePath)
endf


set laststatus=2   " Always show the statusline


let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetsDir = "~/.vim/plugged/snippets/UltiSnips"

set suffixesadd+=.php,.js,.jsx

let &sessionoptions = substitute(&sessionoptions, 'options,', '', '')

let g:smart_object_commands = 'c,d,y'
let g:smart_object_blocks = '(),[],{}'

let g:fzf_layout = { 'down': '~15%' }

com! -nargs=1 Ag :call fzf#vim#ag_raw('--follow <args>')

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


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
