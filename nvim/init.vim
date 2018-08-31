call plug#begin()
" schemes
Plug 'morhetz/gruvbox'
 " For async completion
"Plug 'hzchirs/vim-material'
"Plug 'iCyMind/NeoSolarized' 
"Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'janko-m/vim-test'
Plug 'sbdchd/neoformat'
Plug 'raimondi/delimitmate'
Plug 'yggdroot/indentline'
Plug 'yuttie/comfortable-motion.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'kshenoy/vim-signature'


" project 
Plug 'wincent/ferret'
Plug 'mhinz/vim-startify' " fancy startscreen
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " file drawer
Plug 'eshion/vim-sync' " filesync to remote or local directory
Plug 'embear/vim-localvimrc' " enable .lvimrc support in projects
Plug 'editorconfig/editorconfig-vim' " activates recognition of .editorconfig in projects
Plug 'mileszs/ack.vim'

"utilities
Plug 'benekastah/neomake' " neovim replacement for syntastic using neovim's job control functonality
Plug 'honza/vim-snippets' " snippet library
Plug 'SirVer/ultisnips' " snippet manager
Plug 'joonty/vdebug', { 'for': [ 'php', 'javascript', 'javascript.jsx' ] } " dpkg debugger 
Plug 'vim-scripts/YankRing.vim' " easy yank/paste navigation
Plug 'moll/vim-bbye' " keep window layout on Bdelete/Bwipeout

" additional commands/textobjects
Plug 'mbbill/undotree' " visualize undo branches
Plug 'simnalamburt/vim-mundo'
Plug 'nelstrom/vim-visual-star-search' " enables * search on visual selection
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plug 'tpope/vim-unimpaired' " mappings for easier usage of common actions like next, previous or line switching
Plug 'tpope/vim-abolish' " magic substition
Plug 'junegunn/vim-easy-align' " alignment 
Plug 'vim-scripts/matchit.zip' " extended % matching
Plug 'szw/vim-maximizer' "maximizes a window and resizes it back again
Plug 'christoomey/vim-tmux-navigator' " integrate vim with tmux navigation
Plug 'cohama/lexima.vim' " autmatic closing of quotes, paranehesis, brackets, ...
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-expand-region'
Plug 'jiangmiao/auto-pairs'


"tagbar
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_ctags_tagfile = '.tags'

" autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }



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
Plug 'vim-scripts/matchit.zip'

" JavaScript
"Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
"Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' } " autocompletion and refactoring 
Plug 'pangloss/vim-javascript', { 'for': [ 'javascript.jsx', 'javascript'  ]} " javascript syntax support
Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx', 'javascript'] } " JSX support
Plug 'heavenshell/vim-jsdoc', { 'for': [ 'javascript.jsx', 'javascript' ] }
Plug 'jason0x43/vim-js-indent'
Plug 'Quramy/vim-js-pretty-template'

" Typescirpt
Plug 'leafgarland/typescript-vim'

" styles
Plug 'groenewege/vim-less', { 'for': 'less' } " less support
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] } " set the background of hex color values to the color
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } " CSS3 syntax support
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " sass scss syntax support
Plug 'stephenway/postcss.vim', { 'for': [ 'css', 'scss', 'less', 'stylus' ] } " postcss syntax highlight

"markdown
Plug 'shime/vim-livedown'

"JSON
Plug 'elzr/vim-json'

"ActionScript
Plug 'cespare/mxml.vim'

"Python
Plug 'michaeljsmith/vim-indent-object'
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'

call plug#end()

" Color settings
"colorscheme NeoSolarized
"set termguicolors
"set background=dark

highlight ColorColumn guibg=#4f525b
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='gruvbox'
let g:airline#extensions#tagbar#enabled = 0 " enable airline tabline
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tagbar#flags = 'f'  " show full tag hierarchy

"--nerdtree options--
"let g:miniBufExplorerMoreThanOne = 1
let NERDTreeWinSize=30
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

source ~/.config/nvim/ui.vimrc

" Automatically read a file when changed on the disk 
set autoread
au CursorHold * checktime  

"let g:deoplete#enable_at_startup = 1

"noremap gV `[v`]

" Key mappings
let mapleader = "\<Space>"
map <leader>w <C-W>

nnoremap <esc> :noh<return><esc>
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <C-c> <ESC>

map <leader>v ciw<C-r>0<ESC>

" Map C-s to save the file
noremap <silent> <C-s>          :update<CR>
vnoremap <silent> <C-s>         <C-c>:update<CR>
inoremap <silent> <C-s>         <C-o>mj<C-c>:update<CR>
map <leader>pp :FZF<CR>
map <C-l> :BLines<CR>
map <C-tab> :Buffers<CR>
map <C-g> :GitFiles<CR>
map <Leader>t :BTags<CR>
map <Leader>a :Ag <C-r><C-w><CR>
map <Leader>/ /<C-r><C-w><CR>

map <Leader>d :NERDTreeToggle<CR>
map <Leader>dd :NERDTreeToggle<CR>:NERDTreeToggle<CR>
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
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"
let g:UltiSnipsEditSplit="vertical" " UltiSnipsEdit to split your window.

" mini buffer display
" nmap <leader>b :MBEToggle<cr>



" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<C-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


"easy motion
" <Leader>f{char} to move to {char}
map  <Leader>gf <Plug>(easymotion-bd-f)
nmap <Leader>gf <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap ss <Plug>(easymotion-overwin-f2)

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

"--tagbar options--
let g:tagbar_autoclose = 1
nmap <silent> <leader>bl :TagbarOpen<CR>
" gutentags

let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
\ }                                                                               

let g:tagbar_type_Css = {
\ 'ctagstype' : 'css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
    \ }

fun! ShowFuncName()
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bWn'))
  ou
  echohl None
endfun
map sf :call ShowFuncName() <CR>

let g:vdebug_options = { 'server': '127.0.0.1', 'port': '9000' }

" actionscript
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript

function! s:start_delete(key)
    let l:result = a:key
    if !s:deleting
        let l:result = "\<C-G>u".l:result
    endif
    let s:deleting = 1
    return l:result
endfunction

function! s:check_undo_break(char)
    if s:deleting
        let s:deleting = 0
        call feedkeys("\<BS>\<C-G>u".a:char, 'n')
    endif
endfunction

augroup smartundo
    autocmd!
    autocmd InsertEnter * let s:deleting = 0
    autocmd InsertCharPre * call s:check_undo_break(v:char)
augroup END

inoremap <expr> <BS> <SID>start_delete("\<BS>")
inoremap <expr> <C-W> <SID>start_delete("\<C-W>")
inoremap <expr> <C-U> <SID>start_delete("\<C-U>")

