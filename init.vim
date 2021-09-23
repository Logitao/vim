set ttyfast
set termguicolors
set ff=unix

hi! link SpecialKey Ignore
set clipboard+=unnamedplus
set guicursor=
set encoding=UTF-8
set nu rnu

" Hidden buffers
set hidden

" Hide the default vim mode
set noshowmode

nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'puremourning/vimspector'
" Plug 'gko/vim-coloresque'
Plug 'ap/vim-buftabline'
" SURROUND
Plug 'tpope/vim-surround'
" NERDTREE
Plug 'scrooloose/nerdtree'
" Plug 'othree/yajs.vim'
" Plug 'mxw/vim-jsx'
" AUTOCOMPLETION
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

Plug 'tpope/vim-repeat'
" Plug 'kien/ctrlp.vim'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
" Plug 'josudoey/vim-eslint-fix'
" Plug 'eslint/eslint'
" AIRLINE
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Syntax HTML js html``
" Plug 'jonsmithers/vim-html-template-literals'
Plug 'prettier/vim-prettier'

Plug 'slashmili/alchemist.vim'

" Vertical identlines
Plug 'Yggdroot/indentLine'

" end complete for ruby/elixir
Plug 'tpope/vim-endwise'

Plug 'sheerun/vim-polyglot'

" Plug 'mlaursen/vim-react-snippets'
"TS
" COLORS
" Plug 'arcticicestudio/nord-vim'
" Plug 'wadackel/vim-dogrun'
" Plug 'benburrill/potato-colors'
" Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
" Plug 'yous/vim-open-color'
" Plug 'rakr/vim-one'
" Plug 'ayu-theme/ayu-vim'
" Plug 'morhetz/gruvbox'
" Plug 'axvr/photon.vim'
" Plug 'tjammer/blandon.vim'
" Plug 'lifepillar/vim-solarized8'

Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'wojciechkepka/vim-github-dark'


" ICONS "
" Plug 'ryanoasis/vim-devicons'

"
" Plug 'mattn/emmet-vim'
" Plug 'tmhedberg/matchit'

Plug 'airblade/vim-gitgutter'

"Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tpope/vim-fugitive' 

" CTRL +
Plug 'terryma/vim-expand-region'
call plug#end()

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
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
" Use <leader>x for convert visual selected code to snippet
xmap <space>x  <Plug>(coc-convert-snippet)
nmap <space>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
xmap <space>a  <Plug>(coc-codeaction-selected)
nmap <space>a  <Plug>(coc-codeaction-selected)
nmap <space>ac  <Plug>(coc-codeaction)

inoremap <silent><expr> <c-space>c coc#refresh()

syntax on

" colorscheme dracula_pro
colorscheme onehalfdark

let g:lightline = { 'colorscheme': 'onehalfdark' }

set updatetime=50
set cursorline!
set lazyredraw
set mouse=a
" let g:airline_theme='dracula'

" let g:user_emmet_mode='n'    "only enable normal mode functions.

let mapleader = " "

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

" map <C-n> :NERDTreeToggle <CR>
map <C-p> :GFiles <CR>
" map <Leader>c :noh<CR>
map <Leader>s :vs<CR>
map <Leader>d :sp<CR>

noremap H ^
noremap L $

set shortmess+=c
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

nnoremap <silent> <A-Right> :vertical resize +5<CR> 
nnoremap <silent> <A-Left> :vertical resize -5 <CR>
nnoremap <silent> <A-Up> :res -5<CR>
nnoremap <silent> <A-Down> :res +5<CR>

let g:user_emmet_leader_key='<C-q>'

" surround in 
nnoremap gt vit<Esc>

autocmd FileType json syntax match Comment +\/\/.\+$+

let g:coc_snippet_next = '<tab>'
let g:sneak#label = 1
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set nolist
set shiftwidth=2

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
let g:airline#extensions#tabline#enabled = 1
let g:vimspector_enable_mappings = 'HUMAN'

nnoremap <C-n> :NERDTreeToggle<CR>

nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput

let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]
let g:vimspector_base_dir=expand('$HOME/.config/nvim/vimspector')
