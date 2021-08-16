" --------------------------------------------------------------------------------
" dein (plubin manager) :call dein#install()
" --------------------------------------------------------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/bundles')

" Let dein manage dein
" Required:
call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('airblade/vim-gitgutter')
call dein#add('itchyny/lightline.vim')
call dein#add('leafgarland/typescript-vim')

call dein#add('preservim/nerdtree')

call dein#add('junegunn/fzf', {'build': './install --all'})
call dein#add('junegunn/fzf.vim')
call dein#add('sheerun/vim-polyglot')

call dein#end()

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" :help dein-options

" --------------------------------------------------------------------------------
" for lightline.vim Plugin
" --------------------------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" --------------------------------------------------------------------------------
" nnoremap
" --------------------------------------------------------------------------------
" NERDTree
"  <C-o> open NERDTree
nnoremap <silent> <C-o> :NERDTreeToggle<CR>

" fzf
nnoremap <silent> fzf :Files<CR>
nnoremap <silent> ls :Buffers<CR>

" cursol always center(search + concat line)
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ'z

" --------------------------------------------------------------------------------
" NERDTree
" --------------------------------------------------------------------------------
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
" --------------------------------------------------------------------------------
" General Vim settings
" --------------------------------------------------------------------------------
syntax enable

" colorscheme
colorscheme elflord

" WEBとかからコピペすると行が右にずれるので == ESC -> :i!
set paste

" _vimrc（.vimrc）設定ファイルサンプル
" 検索パターンにおいて大文字と小文字を区別するか（有効:ignorecase/無効:noignorecase）
set ignorecase
" 検索パターンが大文字を含んでいたらオプション 'ignorecase' を上書きする。（有効:smartcase/無効:nosmartcase）
set smartcase

" ファイル内の <Tab> が対応する空白の数。
set tabstop=4
" <Tab> の挿入や <BS> の使用等の編集操作をするときに、<Tab> が対応する空白の数。
set tabstop=2
" インデントの各段階に使われる空白の数。
set shiftwidth=0
" Insertモードで <Tab> を挿入するとき、代わりに適切な数の空白を使う。（有効:expandtab/無効:noexpandtab）
set expandtab

" 入力されているテキストの最大幅。行がそれより長くなると、この幅を超えないように空白の後で改行される。値を 0 に設定すると無効になる。
set textwidth=0
" 新しい行を開始したとき (Insertモードで <CR> を打ち込むか、コマンド "o"や "O" を使ったとき)、新しい行のインデントを現在行と同じくする。（有効:autoindent/無効:noautoindent）
set noautoindent

" オンのときは、ウィンドウの幅より長い行は折り返され、次の行に続けて表示される。（有効:wrap/無効:nowrap）
set nowrap

" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索する。（有効:wrapscan/無効:nowrapscan）
set wrapscan
" オンのとき、コマンドライン補完が拡張モードで行われる。（有効:wildmenu/無効:nowildmenu）
set wildmenu

" 閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする。（有効:showmatch/無効:noshowmatch）
set showmatch

" 毎行の前に行番号を表示する。（有効:number/無効:nonumber）
set nonumber
" カーソルが何行目の何列目に置かれているかを表示する。（有効:ruler/無効:noruler）
set ruler
" タブ文字を CTRL-I で表示し、行末に $ で表示する。（有効:list/無効:nolist）
set nolist
" Listモード (訳注: オプション 'list' がオンのとき) に使われる文字を設定する。
set listchars=tab:>-,extends:<,trail:-,eol:<

" 最下ウィンドウにいつステータス行が表示されるかを設定する。
"               0: 全く表示しない
"               1: ウィンドウの数が2以上のときのみ表示
"               2: 常に表示
set laststatus=2
" コマンド (の一部) を画面の最下行に表示する。（有効:showcmd/無効:noshowcmd）
set showcmd

" ファイルを上書きする前にバックアップを作る。書き込みが成功してもバックアップはそのまま取っておく。（有効:backup/無効:nobackup）
set nobackup
" ファイルの上書きの前にバックアップを作る。オプション 'backup' がオンでない限り、バックアップは上書きに成功した後削除される。（有効:writebackup/無効:nowritebackup）
set writebackup

set noswapfile
set autoread
set hlsearch
set hidden
set cursorline
set nosmartindent

set rtp+=/opt/homebrew/opt/fzf

"if filereadable(expand("~/.vimrc_background"))
"  let base16colorspace=256          " Remove this line if not necessary
"  source ~/.vimrc_background
"endif

" ----------------------------------------------------------------------------------------------------------
" coc.nvim settings
" ----------------------------------------------------------------------------------------------------------
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.