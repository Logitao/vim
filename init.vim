set ttyfast
set termguicolors
set ff=unix

hi! link SpecialKey Ignore
set clipboard+=unnamedplus
set guicursor=
set encoding=UTF-8
set guifont="Fira Code"
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
Plug 'justinmk/vim-sneak'
Plug 'Shougo/neosnippet-snippets'
Plug 'gko/vim-coloresque'
Plug 'honza/vim-snippets'
" SURROUND
Plug 'tpope/vim-surround'
" NERDTREE
Plug 'scrooloose/nerdtree'
" Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
" AUTOCOMPLETION
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'tpope/vim-repeat'
" Plug 'kien/ctrlp.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
" Plug 'josudoey/vim-eslint-fix'
" Plug 'eslint/eslint'
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

Plug 'mlaursen/vim-react-snippets'
"TS
" Plug 'Quramy/tsuquyomi'
Plug 'scrooloose/nerdcommenter'
" Plug 'ryanoasis/vim-devicons'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" COLORS
Plug 'arcticicestudio/nord-vim'
" Plug 'wadackel/vim-dogrun'
" Plug 'benburrill/potato-colors'
" Plug 'joshdick/onedark.vim'
" Plug 'yous/vim-open-color'
" Plug 'rakr/vim-one'
" Plug 'ayu-theme/ayu-vim'
" Plug 'morhetz/gruvbox'
" Plug 'axvr/photon.vim'
" Plug 'tjammer/blandon.vim'
" Plug 'lifepillar/vim-solarized8'

" ICONS "
" Plug 'ryanoasis/vim-devicons'

"
" Plug 'mattn/emmet-vim'
" Plug 'tmhedberg/matchit'

Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-buffergator'

Plug 'burner/vim-svelte'
" ELIXIR
Plug 'andyl/vim-textobj-elixir'
Plug 'kana/vim-textobj-user'
Plug 'mhinz/vim-mix-format'

"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'natebosch/vim-lsc'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tpope/vim-fugitive' 

Plug 'terryma/vim-expand-region'
Plug 'rescript-lang/vim-rescript'
call plug#end()

syntax on

set updatetime=50
set cursorline!
set lazyredraw
set mouse=a
colorscheme nord 
let g:airline_theme='nord'
" let g:airline_theme='onedark'

" let g:user_emmet_mode='n'    "only enable normal mode functions.

let mapleader = "\<Space>"

" coc config
"
let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-pairs',
\ 'coc-tsserver',
\ 'coc-json',
\ 'coc-elixir',
\ 'coc-flutter',
\ ]

"let g:NERDTreeGitStatusWithFlags = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\deps\|deps\|_build\|build\|target'
" let g:deoplete#sources#clang#libclang_path = "/usr/lib/x86_64-linux-gnu/libclang.so"	
" let g:deoplete#sources#clang#clang_header = "/usr/lib/clang/6.0/include"

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
let g:sneak#label = 1
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set nolist

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
endif

