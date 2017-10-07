# 以下を追記
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'

# 以下は必要に応じて追加
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'

filetype plugin indent on
