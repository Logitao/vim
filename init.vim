set termguicolors
set ttyfast
set clipboard+=unnamedplus
call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
" Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'

Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rking/ag.vim'
Plug 'prettier/vim-prettier'
Plug 'slashmili/alchemist.vim'
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-endwise'
Plug 'elixir-editors/vim-elixir'
Plug 'sheerun/vim-polyglot'
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" COLORS
Plug 'benburrill/potato-colors'
Plug 'joshdick/onedark.vim'
Plug 'yous/vim-open-color'
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'axvr/photon.vim'
Plug 'tjammer/blandon.vim'
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

Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'natebosch/vim-lsc'
Plug 'othree/javascript-libraries-syntax.vim'
call plug#end()

syntax on

set updatetime=50
set cursorline!
set lazyredraw
set background=dark
set mouse=a
set regexpengine=1 
" colorscheme onedark 
" colorscheme gruvbox 
" colorscheme potato 
" colorscheme open-color 
" colorscheme one 
colorscheme one
" set background=light
" let g:airline_theme='onedark'
let g:airline_theme='onedark'

" let g:user_emmet_mode='n'    "only enable normal mode functions.

let mapleader = "\<Space>"


set number
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\deps\|deps\|_build\|build'
let g:lsc_server_commands = {'dart': 'dart_language_server'}
" let g:deoplete#sources#clang#libclang_path = "/usr/lib/x86_64-linux-gnu/libclang.so"	
" let g:deoplete#sources#clang#clang_header = "/usr/lib/clang/6.0/include"

map <C-n> :NERDTreeToggle<CR>
map <Leader>c :noh<CR>
map <Leader>b :set cul!<CR>
map <Leader>q :q<CR>
map <Leader>s :vs<CR>
map <Leader>m :MixFormat<CR>
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-q>     <Plug>(neosnippet_expand_or_jump)
smap <C-q>     <Plug>(neosnippet_expand_or_jump)
xmap <C-q>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
set shortmess-=F
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

let NERDTreeShowHidden=1
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" Enable snipMate compatibility feature.
"let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'
nnoremap <silent> <Right> <c-w>l
nnoremap <silent> <Left> <c-w>h
nnoremap <silent> <Up> <c-w>k
nnoremap <silent> <Down> <c-w>j

nnoremap <silent> <A-Right> :vertical resize +5<CR> 
nnoremap <silent> <A-Left> :vertical resize -5 <CR>
nnoremap <silent> <A-Up> :res -5<CR>
nnoremap <silent> <A-Down> :res +5<CR>

map <Leader>9 ysiw(
map <Leader>0 ysiw)

map <Leader>k ysiw{
map <Leader>l ysiw}

map <Leader>h ysiw'
map <Leader>j ysiw`b


map <Leader><Leader>9 vi(
map <Leader><Leader>0 vi)

map <Leader><Leader>k vi{
map <Leader><Leader>l vi}

map <Leader><Leader>h vi'
map <Leader><Leader>j vi`

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
