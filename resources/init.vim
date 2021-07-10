"""""""
" I use dein.
" Begin plugin settings
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('preservim/nerdtree')
  call dein#add('vim-airline/vim-airline')

  call dein#add('airblade/vim-gitgutter')
  let g:githutter_highlight_lines = 1
  let g:gitgutter_highlight_linenrs = 1
  let g:gitgutter_set_sign_backgrounds = 1
  highlight GitGutterAdd    guifg=#009900 ctermfg=2
  highlight GitGutterChange guifg=#bbbb00 ctermfg=3
  highlight GitGutterDelete guifg=#ff2222 ctermfg=1

  " Install font from https://www.nerdfonts.com/font-downloads to use this.
  call dein#add('ryanoasis/vim-devicons')

  " Rust
  "   Install following packages to use these plugins.
  "   - https://github.com/rust-lang/rustfmt
  "   - https://github.com/racer-rust/racer
  call dein#add('rust-lang/rust.vim')
  let g:rustfmt_autosave = 1
  set hidden
  call dein#add('racer-rust/vim-racer')
  let g:racer_cmd = "~/.cargo/bin/racer"
  let g:racer_experimental_completer = 1

  call dein#add('scrooloose/syntastic')
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0

  "call map(dein#check_clean(), "delete(v:val, 'rf')")

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
" End of plugin settings
""""""""""

"""""""
" Other cofigurations
set number
filetype plugin indent on
set encoding=utf-8
syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set hlsearch
set background=dark
set ruler
set laststatus=2
set wildmenu
set showcmd
set backspace=indent,eol,start
set scrolloff=8
set sidescrolloff=8
set cursorline
set belloff=all
set updatetime=100
let mapleader = "\<Space>"

""""""""""""""""""""""""
" Local configurations
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

