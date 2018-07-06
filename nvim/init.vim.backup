call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'shime/vim-livedown'
 " For async completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'pangloss/vim-javascript'
Plug 'jason0x43/vim-js-indent'
Plug 'Quramy/vim-js-pretty-template'
Plug 'leafgarland/typescript-vim'
Plug 'hzchirs/vim-material'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'janko-m/vim-test'
Plug 'terryma/vim-expand-region'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
" Plug 'terryma/vim-multiple-cursors'
Plug 'ternjs/tern_for_vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'szw/vim-maximizer'
call plug#end()

" Color settings
colorscheme vim-material
highlight ColorColumn guibg=#4f525b
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

"--nerdtree options--
let g:miniBufExplorerMoreThanOne = 0
let NERDTreeWinSize=30
"let NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1


" supress other completion
set shortmess+=c

" General settings
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamedplus
let base16colorspace=256
set termguicolors
set relativenumber
set colorcolumn=80
set ignorecase
set smartcase
set splitright
set hidden
set mouse=a

set cursorline  
set cursorcolumn

" Automatically read a file when changed on the disk 
set autoread
au CursorHold * checktime  

let g:deoplete#enable_at_startup = 1

"noremap gV `[v`]

" Key mappings
let mapleader = "\<Space>"
map <leader>w <C-W>
map <leader>s <C-W><C-W>


" Map C-s to save the file
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
map <C-p> :FZF<CR>
map <C-l> :BLines<CR>
map <C-tab> :Buffers<CR>
map <C-g> :GitFiles<CR>
map <Leader>t :BTags<CR>
map <Leader>a :Ag<CR>
map <Leader>d :NERDTreeToggle<CR>
map <Leader>dd :NERDTreeToggle<CR>:NERDTreeToggle<CR>
map <leader>p :PrettierAsync<CR>

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j 

noremap <Leader>n nzz
noremap <Leader>N Nzz

autocmd FileType javascript :JsPreTmpl html
autocmd FileType typescript :JsPreTmpl html
autocmd FileType typescript :JsPreTmpl css
autocmd FileType typescript syn clear foldBraces " For leafgarland/typescript-vim users only. Please see #1 for details.

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>tl :tabnext<cr>
map <leader>th :tabprev<cr>

" Remap VIM 0 to first non-blank character
map 0 ^
map <CR> g$

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Expand region mapping
map <leader>e <Plug>(expand_region_expand)
map <leader>, <Plug>(expand_region_shrink)

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : deoplete#manual_complete()

"let g:typescript_indent_disable = 1
let g:deoplete#enable_at_startup = 1
let g:javascript_plugin_jsdoc = 1

" vim-surround mappings
let g:surround_no_mappings = 1
nmap <leader>ds  <Plug>Dsurround
nmap <leader>cs  <Plug>Csurround
nmap <leader>ys  <Plug>Ysurround
nmap <leader>yS  <Plug>YSurround
nmap <leader>yss <Plug>Yssurround
nmap <leader>ySs <Plug>YSsurround
nmap <leader>ySS <Plug>YSSurround
xmap <leader>vs   <Plug>VSurround
xmap <leader>gS  <Plug>VgSurround
if !hasmapto("<Plug>Isurround","i") && "" == mapcheck("<C-S>","i")
  imap    <C-S> <Plug>Isurround
endif
imap      <C-G>s <Plug>Isurround
imap      <C-G>S <Plug>ISurround

let g:fzf_action = {
      \ 'ctrl-j': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }

nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

let g:LanguageClient_autoStart = 1

" <leader>ld to go to definition
autocmd FileType javascript nnoremap <buffer>
      \ <leader>ld :call LanguageClient_textDocument_definition()<cr>
" <leader>lh for type info under cursor
autocmd FileType javascript nnoremap <buffer>
      \ <leader>lh :call LanguageClient_textDocument_hover()<cr>
" <leader>lr to rename variable under cursor
autocmd FileType javascript nnoremap <buffer>
      \ <leader>lr :call LanguageClient_textDocument_rename()<cr>
autocmd FileType javascript nnoremap <buffer>
      \ <leader>lf :call LanguageClient_textDocument_documentSymbol()<cr>

" Required for operations modifying multiple buffers like rename.
set hidden
"      \ 'javascript': ['javascript-typescript-stdio'],
"      \ 'typescript': ['javascript-typescript-stdio'],

" LanguageClient settings
let g:LanguageClient_serverCommands = {
      \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
      \ 'typescript': ['tcp://127.0.0.1:2089'],
      \ 'javascript': ['tcp://127.0.0.1:2089'],
      \ 'python': ['pyls'],
      \ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" ALE settings
let g:ale_linters = {
      \   'javascript': ['eslint', 'jshint'],
      \}
let g:ale_fixers = {
      \   'javascript': ['eslint', 'jshint'],
      \}

" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0
" should the browser window pop-up upon previewing
let g:livedown_open = 1 
" the port on which Livedown server will run
let g:livedown_port = 1337
" the browser to use
let g:livedown_browser = "safari"
"silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
