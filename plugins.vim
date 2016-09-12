set nocompatible
filetype off
set rtp+=/home/simen/.vim/bundle/Vundle.vim
call vundle#begin('/home/simen/.vim/bundle')

Plugin 'gmarik/Vundle.vim'





"
"General plugins
"
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'ervandew/supertab'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Shougo/deoplete.nvim'
" Plugin 'justinmk/vim-sneak'


"
"My own plugins
"
Plugin 'lumiliet/vim-pathfinder'
Plugin 'lumiliet/vim-twig'
Plugin 'lumiliet/vim-run'
" Plugin 'lumiliet/vim-cold-turkey'
" Plugin 'lumiliet/vim-shell'
Plugin 'lumiliet/vim-smart-object'
Plugin 'lumiliet/vim-text-objects'
Plugin 'lumiliet/vim-sessions'
Plugin 'lumiliet/vim-clojure'
Plugin 'lumiliet/snippets'
Plugin 'lumiliet/vim-flack'

Plugin 'morhetz/gruvbox'


"
"Language specific plugins
"
Plugin 'pangloss/vim-javascript'
"Plugin 'marijnh/tern_for_vim'
Plugin 'rstacruz/sparkup'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'majutsushi/tagbar'
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'othree/html5.vim'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'raymond-w-ko/vim-niji'





call vundle#end()
filetype plugin indent on
