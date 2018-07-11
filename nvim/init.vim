call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'fholgado/minibufexpl.vim'
 " For async completion
"Plug 'hzchirs/vim-material'
Plug 'iCyMind/NeoSolarized' 
"Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'janko-m/vim-test'
Plug 'terryma/vim-expand-region'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'szw/vim-maximizer'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'raimondi/delimitmate'
Plug 'simnalamburt/vim-mundo'
Plug 'yggdroot/indentline'

" autocompletion
Plug 'ncm2/ncm2'
" ncm2 requires nvim-yarp
Plug 'roxma/nvim-yarp'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }


" Utils
Plug 'honza/vim-snippets' " snippet library
Plug 'SirVer/ultisnips' " snippet manager

" git support
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'airblade/vim-gitgutter' " gitstatus in the gutter column
Plug 'junegunn/gv.vim' " extension for fugitive to show log --graph

" cpp
Plug 'octol/vim-cpp-enhanced-highlight'

" code format
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" html / templates
Plug 'mattn/emmet-vim', { 'for': [ 'html', 'javascript', 'javascript.jsx', 'typoscript' ] } " emmet support for vim - easily create markdup wth CSS-like syntax
Plug 'gregsexton/MatchTag', { 'for': 'html' } " match tags in html, similar to paren support
Plug 'othree/html5.vim', { 'for': 'html' } " html5 support
Plug 'mustache/vim-mustache-handlebars', { 'for': 'mustache' }  " mustach support
Plug 'juvenn/mustache.vim', { 'for': 'mustache' } " mustache support

" JavaScript
"Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
"Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install -g tern' } " autocompletion and refactoring 
Plug 'pangloss/vim-javascript', { 'for': [ 'javascript.jsx', 'javascript'  ]} " javascript syntax support
Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx', 'javascript'] } " JSX support
Plug 'heavenshell/vim-jsdoc', { 'for': [ 'javascript.jsx', 'javascript' ] }
Plug 'jason0x43/vim-js-indent'
Plug 'Quramy/vim-js-pretty-template'

" Typescirpt
Plug 'leafgarland/typescript-vim'


" styles
"Plug 'calebeby/ncm-css' " completion for css/scss/sass
Plug 'groenewege/vim-less', { 'for': 'less' } " less support
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] } " set the background of hex color values to the color
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } " CSS3 syntax support
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " sass scss syntax support
Plug 'stephenway/postcss.vim', { 'for': [ 'css', 'scss', 'less', 'stylus' ] } " postcss syntax highlight

"markdown
Plug 'shime/vim-livedown'

"JSON
Plug 'elzr/vim-json'


call plug#end()

" Color settings
colorscheme NeoSolarized
set termguicolors
set background=dark

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

" enable ncm2 for all buffer
autocmd BufEnter * call ncm2#enable_for_buffer()
set completefunc=LanguageClient#complete
" note that must keep noinsert in completeopt, the others is optional
set completeopt=noinsert,menuone,noselect
"set shortmess+=c
" General settings
" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
set expandtab               " insert spaces rather than tabsfor <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'

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

"let g:deoplete#enable_at_startup = 1

"noremap gV `[v`]

" Key mappings
let mapleader = "\<Space>"
map <leader>w <C-W>


" Map C-s to save the file
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
map <leader>pp :FZF<CR>
map <C-l> :BLines<CR>
map <C-tab> :Buffers<CR>
map <C-g> :GitFiles<CR>
map <Leader>t :BTags<CR>
map <Leader>a :Ag<CR>
map <Leader>d :NERDTreeToggle<CR>
map <leader>pa :PrettierAsync<CR>

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j 

"noremap <Leader>n nzz
"noremap <Leader>N Nzz

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

"inoremap <silent><expr> <Tab>
      "\ pumvisible() ? "\<C-n>" : deoplete#manual_complete()

"let g:typescript_indent_disable = 1
let g:javascript_plugin_jsdoc = 1

" vim-surround mappings
let g:surround_no_mappings                 = 1
nmap <leader>ds  <Plug>Dsurround
nmap <leader>cs  <Plug>Csurround
nmap <leader>ys  <Plug>Ysurround
nmap <leader>yS  <Plug>YSurround
nmap <leader>yss <Plug>Yssurround
nmap <leader>ySs <Plug>YSsurround
nmap <leader>ySS <Plug>YSSurround
xmap <leader>s   <Plug>VSurround
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
set signcolumn=yes

nnoremap <silent> gh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Required for operations modifying multiple buffers like rename.
set hidden

" Use an absolute configuration path if you want system-wide settings 
"let g:LanguageClient_loadSettings = 1 
"let g:LanguageClient_settingsPath = '~/.config/nvim/settings.json'
set completefunc=LanguageClient#complete
set formatexpr=LanguageClient_textDocument_rangeFormatting()
" LanguageClient settings
let g:LanguageClient_serverCommands = {
      \ 'javascript.jsx': ['javascript-typescript-stdio'],
      \ 'typescript': ['javascript-typescript-stdio'],
      \ 'javascript': ['javascript-typescript-stdio'],
      \ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],
      \ 'c': ['cquery', '--log-file=/tmp/cq.log'],
      \ 'python': ['pyls'],
      \ }

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

"Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Fugitive
nmap <silent> <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <silent><leader>gr :Gread<cr>
nmap <silent><leader>gb :Gblame<cr>

" UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric//YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " UltiSnipsEdit to split your window.

" mini buffer display
nmap <leader>b :MBEToggle<cr>


" lookup
autocmd FileType javascript* nnoremap <leader>rlr :TernRefs<cr>
autocmd FileType javascript* nnoremap <leader>rld :TernDoc<cr>

" rename
autocmd FileType javascript* nnoremap <leader>rrr :TernRename<cr>

" go to definition of a method / class / whatever via Ctags
autocmd FileType javascript* map <leader>] :TernDef<CR>

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" wrap existing omnifunc
" Note that omnifunc does not run in background and may probably block the
" editor. If you don't want to be blocked by omnifunc too often, you could
" add 180ms delay before the omni wrapper:
"  'on_complete': ['ncm2#on_complete#delay', 180,
"               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
au User Ncm2Plugin call ncm2#register_source({
        \ 'name' : 'css',
        \ 'priority': 9, 
        \ 'subscope_enable': 1,
        \ 'scope': ['css','scss'],
        \ 'mark': 'css',
        \ 'word_pattern': '[\w\-]+',
        \ 'complete_pattern': ':\s*',
        \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
        \ })


"easy motion
" <Leader>f{char} to move to {char}
map  <Leader>gf <Plug>(easymotion-bd-f)
nmap <Leader>gf <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>gl <Plug>(easymotion-bd-jk)
nmap <Leader>gl <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>gw <Plug>(easymotion-bd-w)
nmap <Leader>gw <Plug>(easymotion-overwin-w)

" gundo
nnoremap <Leader>un :mundotoggle<cr>
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 1
set undofile
set undodir=~/.config/nvim/undo


"JSON setting
au! BufRead,BufNewFile *.json set filetype=json

augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END
