" ---------------------------
" -- 基本の設定            --
" ---------------------------
set fenc=utf-8                             "文字コードをUTF-8にする
set nobackup                               "バックアップファイルを作らない 
set autoread                               "編集中のファイルが変更されたら自動で読み直す
set confirm                                "保存されていないファイルがあるとき、終了前に保存確認
set hidden                                 "保存されていないファイルがあるときでも、別のファイルを開けるようにする
syntax enable                              "シンタックスハイライトを有効にする
set mouse=a                                "マウスでの操作を受け付ける
set backspace=indent,eol,start             "インサートモードでもバックスペースで削除できるようにする
set wildmenu wildmode=list:longest,full    "コマンドモードで、tabキーで補完入力できるようにする
set history=1000                           "コマンド入力履歴を1000件保存しておく
set clipboard=unnamed,autoselect           "コピーしたものがクリップボードに入るようにする

" ---------------------------
" -- カーソル移動関連の設定--
" ---------------------------
set whichwrap=b,s,h,l,<,>,[,]              "行頭行末の左右移動で、行を移動できるようにする
set scrolloff=8                            "上下8行分の視界を確保する

" ---------------------------
" -- 画面表示系の設定      -- 
" ---------------------------
set number                                 "行番号を表示
set cursorline                             "カーソル行を強調表示
set cursorcolumn                           "カーソル位置を強調表示
set showcmd                                "入力中のコマンドを表示
set display=lastline                       "長い行も省略せずに表示
set list                                   "不可視文字を表示
set listchars=eol:↲,trail:_                "不可視文字の表示設定 eol:改行 trail:末尾スペース

" ---------------------------
" -- ステータスラインの設定--
" ---------------------------
set laststatus=2                          "ステータスラインを表示
set statusline=%F                         "ファイル名を表示
set statusline+=%=                        "これ以降は右寄せ表示
set statusline+=[ENCODE=%{&fileencoding}] "文字コードを表示
set statusline+=[LOW=%l/%L]               "今の行数/全体行数

" ---------------------------
" -- tabとインデントの設定 --
" ---------------------------
set expandtab                             "tabを半角スペースにする
set tabstop=2                             "tabは半角スペース2個分
set shiftwidth=2                          "インデントは半角スペース2個分
set autoindent                            "改行時、前の行のインデントを継続
set smartindent                           "改行時、末尾に合わせて次の行を自動インデントする

" ---------------------------
" -- 検索と置換の設定      --
" ---------------------------
set hlsearch                              "検索結果をハイライト
set incsearch                             "インクリメンタルサーチを有効にする
set ignorecase                            "大文字と小文字を区別しない
set smartcase                             "大文字と小文字が混在した状態で検索した場合、大文字と小文字を区別する
set wrapscan                              "最後まで検索したら戦闘に戻る
set gdefault                              "置換のとき、カーソル行をまとめて置換する

"----------------------------
"-- プラグイン管理         --
"----------------------------
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/kyoruni/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/kyoruni/.cache/dein')
  call dein#begin('/Users/kyoruni/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/kyoruni/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('mattn/emmet-vim')        "emmet
  call dein#add('cocopon/iceberg.vim')    "color scheme
  call dein#add('sonjapeterson/1989.vim') "color scheme
  call dein#add('scrooloose/nerdtree')    "file tree


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

"起動時にインストールする
if dein#check_install()
  call dein#install()
endif

colorscheme 1989
