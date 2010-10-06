"-----------------------------------------------------------------------------
" General
"-----------------------------------------------------------------------------
set nocompatible
set history=1024
set cf                                " enable error files and error jumping
set ffs=unix,dos,mac                  " support these files
filetype on
filetype plugin on
filetype indent on
set isk+=_,$,@,%,#,-
set modeline
set autoread                          " reload file
set tabpagemax=50                     " open 50 tabs max


"-----------------------------------------------------------------------------
" Colors/ Theme
"-----------------------------------------------------------------------------
colo mustang
set guifont=ProggyCleanTT\ 11

if has("syntax")
  syntax on
endif

set hls                               " Highlighting search result

"-----------------------------------------------------------------------------
" Backup
"-----------------------------------------------------------------------------
set nobackup
set nowritebackup
set noswapfile
set backupdir=/tmp/
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

"-----------------------------------------------------------------------------
" UI
"-----------------------------------------------------------------------------
set ruler                             " show cursor position all the time
set nolazyredraw
set number                            " set line number on
set wildmenu
set wildmode=list:longest, full
set ch=1                              " command line height
set backspace=2
set report=0                          " tell us about changes
set guioptions=aegitcm
win 180 50
set laststatus=2                      " always show status line
set mousehide                         " hide mouse after chars typed
set mouse=a                           " mouse in all modes

"-----------------------------------------------------------------------------
" Visual cues
"-----------------------------------------------------------------------------
set showmatch
set incsearch
set ignorecase                        " case insensitive search
set mat=5                             " bracket blinking
set novisualbell                      " no blinking
set noerrorbell                       " no noise

"-----------------------------------------------------------------------------
" Text formatting
"-----------------------------------------------------------------------------
set autoindent
set smartindent
set nowrap
set tabstop=2
set softtabstop=2
set nosmarttab
set expandtab
set formatoptions+=n
set shiftwidth=2
set encoding=utf-8
set vb t_vb=
set virtualedit=all
set textwidth=80
set smartcase

set foldmethod=syntax
set foldnestmax=10
set nofoldenable                        "don't fold by default
set foldlevel=1
set clipboard+=unnamed                  " yanks go on clipboard instead
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set cindent

"-----------------------------------------------------------------------------
" Mapping keys
"-----------------------------------------------------------------------------
" remap Leader to , instead of \
let mapleader = ","
map <F7> :cn<CR>

" use ctrl + prev/next to browse tab
"map [5^ gT
"map [6^ gt
"map <C-N> :tabnew<CR>
"map <C-T> :tabnex<CR>:cd %:p:h<CR>:<CR>
"Ctrl-left arrow – move one tab to the left
map <C-left> :tabp<CR>

"Ctrl-right arrow – move one tab to the right
map <C-right> :tabn<CR>

"save
map <C-S> :w<CR> 
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l
map <C-J> :m +1 <CR>
map <C-K> :m -2 <CR>
map <F2> :NERDTreeToggle<CR>
nmap <tab> v>

vmap <tab> >gv
vmap <TAB> >gv
vmap <s-TAB> <gv

"a trick for sudo save
cmap w!! w !sudo tee % >/dev/null

" map esc
imap ;; <Esc>
imap jk <Esc>
imap <s-CR> <CR><CR>end<Esc>ki
imap <M-k> <C-x><C-o>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
"Enable arrow key for FuzzyFinder
"inoremap <Up> <NOP>
"inoremap <Down> <NOP>
nnoremap <silent> <F3> :TlistToggle<CR>
nnoremap <silent> <F4> :FufFile<CR>
nnoremap <Leader>ff :FufFile<CR>
"clear highlight search
nnoremap <Esc> :noh<CR><Esc>

"Ctrl + S to save
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

"move to next/previous line with same indentation
nnoremap <M-,> k:call search('^'. matchstr(getline(line('.')+1), '\(\s*\)') .'\S', 'b')<CR>^
nnoremap <M-.> :call search('^'. matchstr(getline(line('.')), '\(\s*\)') .'\S')<CR>^

"autotest 
nmap <Leader>fd :cf /tmp/autotest.txt<CR> :compiler rubyunit<CR>


"-----------------------------------------------------------------------------
" Auto commands
"-----------------------------------------------------------------------------
" Edit .vimrc
command! vimrc :e ~/.vimrc
au! BufRead,BufNewFile *.haml setfiletype haml

"auto open NERDTree when start
"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p


"-----------------------------------------------------------------------------
" Ruby related
"-----------------------------------------------------------------------------
compiler rubyunit
let g:rubytest_in_quickfix = 0              " minimal ruby test error message
"au Filetype ruby call Foldsearch("")
au Filetype ruby let b:foldsearchprefix='\v^\s*(#.*)?$'


let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)
let tlist_sql_settings = 'sql;P:package;t:table'
let tlist_ant_settings = 'ant;p:Project;r:Property;t:Target'
"let Tlist_Ctags_Cmd = $VIM.'/vimfiles/ctags.exe' " location of ctags tool
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/gem/**;vendor/plugins/**;coverage/**;tmp/**;rdoc/**"
let g:fuf_splitPathMatching=1

set shell /bin/sh
cd ~/fun/xenng
