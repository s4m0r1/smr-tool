if !&compatible
  set nocompatible
endif

"reset augroup
augroup MyAutoCmd
    autocmd!
augroup END

let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME

" {{{ dein
let s:dein_dir = expand('$DATA/dein')

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

    " Auto Download
    if !isdirectory(s:dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif


" dein.vim settings

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    let s:toml_dir = expand('$CONFIG/dein')

    call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
    if has('python3')
        call dein#load_toml(s:toml_dir . '/python.toml', {'lazy': 1})
    endif

    call dein#end()
    call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
    call dein#install()
endif
" }}}

"VIMの設定を記述

"行番号を設定
set number

"タイトルを設定
set title

"縦と横強調
set cursorline
set cursorcolumn

"ビープ音強調
set visualbell

"バックアップを作らない
set nobackup

"スワップファイルを作らない
set noswapfile

"行頭でのインデントの空白を4文字にする
set shiftwidth=4

"インデントの文字数を４文字にする
set tabstop=4

"入力中のコマンドを表示する
set showcmd

"テスト
set statusline=2
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim
