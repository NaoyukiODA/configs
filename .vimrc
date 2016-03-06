if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
set number
set tabstop=4
set shiftwidth=4
set smartindent
set display=lastline
set pumheight=10
set showmatch
set matchtime=1
set columns=120
set lines=40
set tags=./tags;

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
call dein#add('rust-lang/rust.vim')

call dein#add('Shougo/unite.vim')
call dein#add('fatih/vim-go')
call dein#end()
