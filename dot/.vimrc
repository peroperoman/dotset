"FileTypeOFF
filetype off
filetype plugin indent off
"neobundle
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'Shougo/vimfiler.vim'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'airblade/vim-gitgutter'
  NeoBundle 'Shougo/neocomplete.vim'
  NeoBundle 'itchyny/lightline.vim'
  NeoBundle 'tomasr/molokai'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/neomru.vim'
  NeoBundle 'scrooloose/nerdtree'
  endif
  call neobundle#end()
" 高速化
set ttyfast
"ColorSet
colorscheme molokai
"op
set encoding=utf-8
"scriptencoding utf-8
"set fileencodings=ucs-bom,utf-8,sjis,euc-jp,gb2312,big5
""enc Escキーのディレイを解消
if !has('gui_running')
    set timeout timeoutlen=1000 ttimeoutlen=50
endif
" バックスペースでの削除を有効化
set backspace=indent,eol,start
" マウス操作有効
set mouse=a
" tab補完
set wildmenu wildmode=list:full
" 行跨ぎのカーソル移動
set whichwrap=b,s,h,l,<,>,[,],~
" インクリメンタルサーチ
set incsearch
" シンタックス
syntax on
" ハイライト表示をしない
set nohlsearch
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
hi clear CursorLine
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" ステータス表示内容
set statusline=%F%r%h%=
" コマンドラインの補完
set wildmode=list:longest
" 折り返表示の時も表示行単位での移動できるようにする
vnoremap j gj
vnoremap k gk
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 省略しない
set display=lastline
" 対応する括弧を表示
set showmatch
set matchtime=2
