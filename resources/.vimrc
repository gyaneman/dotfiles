""""""""""""""""""""""""
" 2017/06/29


""""""""""""""""""""""""
" NeoBundle

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'mac'     : 'make -f make_mac.mak',
    \ 'unix'    : 'make -f make_unix.mak',
  \ },
\ }
NeoBundle 'Shougo/vimshell'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'

call neobundle#end()

colorscheme default
let g:indent_guides_enable_on_vim_startup=1
let g:indnet_guides_auto_colors=0
hi IndentGuidesOdd  guibg=grey     ctermbg=grey
hi IndentGuidesEven guibg=lightgry ctermbg=lightgrey








""""""""""""""""""""""""
" Other cofigurations
set number
set title
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set hlsearch
set background=dark
set ruler
set laststatus=2
set wildmenu
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
set showcmd



"""""""""""""""""""""
" Color config
hi Comment ctermfg=green
hi Statement ctermfg=yellow
hi PreProc ctermfg=cyan
hi Constant ctermfg=red
hi Type ctermfg=darkcyan
