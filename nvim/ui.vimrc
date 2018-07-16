" vim:fdm=marker
" vim:fdm=marker

" Abbreviations
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter

" reducing number of lines in viminfo file -- fixing slow startup times
if (has('nvim'))
  set shada='20,<50,s10
else
  set viminfo='20,<50,s10
endif

set nocompatible            " not compatible with vi
set autoread                " detect when a file is changed
set history=1000            " change history to 1000
set clipboard=unnamedplus
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" set python paths for plugins depending on python to work
let g:python3_host_prog = '/usr/local/bin/python3'



let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'hard'

colorscheme gruvbox " Set the colorscheme
set background=dark

if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ Mono:h13
endif

" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

" make comments and HTML attributes italic
highlight Comment cterm=italic
highlight htmlArg cterm=italic

set number                  " show line numbers
set relativenumber
set cursorline
set cursorcolumn
set splitright

set wrap                    " turn on line wrapping
set wrapmargin=8            " wrap lines when coming within n characters from side
set linebreak               " set soft wrapping
set showbreak=…             " show ellipsis at breaking

set autoindent              " automatically set indent of new line
set smartindent

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
set expandtab               " insert spaces rather than tabsfor <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" code folding settings
set foldmethod=syntax       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1

set ttyfast                 " faster redrawing
set diffopt+=vertical
set laststatus=2            " show the satus line all the time
set so=7                    " set 7 lines to the cursors - when moving vertical
set wildmenu                " enhanced command line completion
set hidden                  " current buffer can be put into background
set showcmd                 " show incomplete commands
set noshowmode              " don't show which mode disabled for PowerLine
set wildmode=list:longest   " complete files like a shell
set scrolloff=3             " lines of text around cursor
set shell=$SHELL
set cmdheight=1             " command bar height
set title                   " set terminal title

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros
set magic                   " Set magic on, for regex
set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink


" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

if has('mouse')
	set mouse=a
endif
