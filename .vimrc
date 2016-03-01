



" == basic ==

syntax on
filetype on
filetype plugin indent on

set nocompatible
set nowrap
set showmode
set textwidth=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab
set incsearch           
set mouse=a             " enable use mouse
set history=1000
set clipboard=unnamedplus,autoselect

set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256            " number of colors

set cmdheight=1

set background=dark
set tabstop=4
set showmatch

colorscheme desert      
set guifont=Input\ 14

set guioptions-=m           " disable menu bar
set guioptions-=T           " disable tool bar
" disable scrollbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R           
" always show status line
set laststatus=2
set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \
\ %p%%
" show line number
set number
" hightlight search result
set hlsearch

" define <Leader> key
let mapleader=";"

" in visual mode, copy to system clipboard
vnoremap <Leader>y "+y
" paste the system clipboard to vim
nmap <Leader>p "+p
" open a terminal
noremap <C-d> :sh<cr>

" == syntastic ==

map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" == ghc-mod ==

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>


" == supertab ==

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif


" == neco-ghc ==

let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" == nerd-tree ==

map <Leader>n :NERDTreeToggle<CR>

" == tabular ==

let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" == ctrl-p ==

map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

" == Vundle ==

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'Shougo/neocomplete.vim'
Plugin 'shougo/vimproc.vim'
Plugin 'rking/ag.vim'

