set ttyfast
set termguicolors
set ff=unix

hi! link SpecialKey Ignore
set clipboard+=unnamedplus
set guicursor=
set encoding=UTF-8
set guifont="FuraCode Nerd Font"
set nu rnu

call plug#begin('~/.vim/plugged')

" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
"
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
" SURROUND
Plug 'tpope/vim-surround'
" NERDTREE
Plug 'scrooloose/nerdtree'
" Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
" AUTOCOMPLETION
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" Plug 'kien/ctrlp.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'josudoey/vim-eslint-fix'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'rking/ag.vim'
" Syntax HTML js html``
Plug 'jonsmithers/vim-html-template-literals'

Plug 'prettier/vim-prettier'

Plug 'slashmili/alchemist.vim'

Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-endwise'
Plug 'elixir-editors/vim-elixir'
Plug 'sheerun/vim-polyglot'
"TS
Plug 'Quramy/tsuquyomi'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" COLORS
Plug 'benburrill/potato-colors'
Plug 'joshdick/onedark.vim'
Plug 'yous/vim-open-color'
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'axvr/photon.vim'
Plug 'tjammer/blandon.vim'
Plug 'lifepillar/vim-solarized8'

" ICONS "
Plug 'ryanoasis/vim-devicons'

"
" Plug 'mattn/emmet-vim'
" Plug 'tmhedberg/matchit'

Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-buffergator'

Plug 'Galooshi/vim-import-js'
Plug 'burner/vim-svelte'
" ELIXIR
Plug 'andyl/vim-textobj-elixir'
Plug 'kana/vim-textobj-user'
Plug 'mhinz/vim-mix-format'

" C (lang)
" Plug 'zchee/deoplete-clang'
" Plug 'Shougo/neoinclude.vim'

" Plug 'ludovicchabant/vim-gutentags'
" Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'natebosch/vim-lsc'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tpope/vim-fugitive' 

call plug#end()

syntax on

set updatetime=50
set cursorline!
set lazyredraw
set background=dark
set mouse=a
set regexpengine=1 
colorscheme onedark 
" colorscheme gruvbox 
" colorscheme potato 
" colorscheme open-color 
" colorscheme one 
" colorscheme solarized8
set background=dark
" let g:airline_theme='onedark'
let g:airline_theme='solarized'

" let g:user_emmet_mode='n'    "only enable normal mode functions.

let mapleader = "\<Space>"

" coc config
"
let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-pairs',
\ 'coc-tsserver',
\ 'coc-json',
\ 'coc-rls', 
\ 'coc-elixir',
\ 'coc-flutter',
\ 'coc-snippets',
\ ]

let g:polyglot_disabled = ['typescript', 'ts']

"let g:NERDTreeGitStatusWithFlags = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\deps\|deps\|_build\|build'
" let g:deoplete#sources#clang#libclang_path = "/usr/lib/x86_64-linux-gnu/libclang.so"	
" let g:deoplete#sources#clang#clang_header = "/usr/lib/clang/6.0/include"

".vimrc
function! PrettyFile()
  if &filetype=="javascript" || &filetype=="typescript"
    if exists('g:loaded_Beautifier')
      call JsBeautify()
    endif
    if exists('g:loaded_ESLintFix')
      call ESLintFix()
    endif
  end
endfunction

"pretty the file before saving.
autocmd BufWritePre * execute 'call PrettyFile()'

map <C-n> :NERDTreeToggle <CR>
map <Leader>c :noh<CR>
map <Leader>b :set cul!<CR>
map <Leader>q :q<CR>
map <Leader>s :vs<CR>
map <Leader>m :MixFormat<CR>

set shortmess+=c
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

let NERDTreeShowHidden=1
nnoremap <silent> <Right> <c-w>l
nnoremap <silent> <Left> <c-w>h
nnoremap <silent> <Up> <c-w>k
nnoremap <silent> <Down> <c-w>j

nnoremap <silent> <A-Right> :vertical resize +5<CR> 
nnoremap <silent> <A-Left> :vertical resize -5 <CR>
nnoremap <silent> <A-Up> :res -5<CR>
nnoremap <silent> <A-Down> :res +5<CR>

let g:user_emmet_leader_key='<C-q>'

" surround in 
map <Leader>9 ysiw(
map <Leader>0 ysiw)

map <Leader>k ysiw{
map <Leader>l ysiw}

map <Leader>h ysiw'
map <Leader>j ysiw`b

"visual in
map <Leader>v9 vi(
map <Leader>v0 vi)

map <Leader>vk vi{
map <Leader>vl vi}

map <Leader>vh vi'
map <Leader>vj vi`

"visual at
map <Leader>vv9 va(
map <Leader>vv0 va)

map <Leader>vvk va{
map <Leader>vvl va}

map <Leader>vvh va'
map <Leader>vvj va`

" visual
vmap <Leader>9 S(
vmap <Leader>0 S)

vmap <Leader>k S{
vmap <Leader>l S}

vmap <Leader>h S'
vmap <Leader>j S`

autocmd FileType json syntax match Comment +\/\/.\+$+

let g:coc_snippet_next = '<tab>'
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set nolist
