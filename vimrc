" call pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

" List of vundle bundles goes here
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'FuzzyFinder'
Plugin 'L9'
Plugin 'bufferlist.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'quramy/tsuquyomi'
Plugin 'quramy/vison'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'docker/docker'
Plugin 'andrewstuart/vim-kubernetes'

call vundle#end()
" End of vundle bundles List

" ----- Syntastic -----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ----- Syntastic -----

set guifont=Liberation\ Mono\ 11
set printfont=Courier:h7

au BufNewFile,BufRead *.ws set filetype=lua
au BufNewFile,BufRead *.conf set filetype=nginx
au BufNewFile,BufRead *.racc set filetype=racc
au BufNewFile,BufRead docker-compose*.yml set filetype=docker-compose
au BufNewFile,BufRead Dockerfile set filetype=docker
au BufNewFile,BufRead *.[Dd]ockerfile set filetype=docker
au BufNewFile,BufRead *.ts set filetype=typescript
au BufNewFile,BufRead *.tsx set filetype=typescript
au BufNewFile,BufRead *.json set filetype=json

set background=dark
if has("gui_running")
  let g:solarized_contrast="high"    "default value is normal
  let g:solarized_visibility="high"    "default value is normal
  let g:solarized_hitrail=1    "default value is 0
  syntax enable
  set background=dark
  colorscheme ir_black
endif

" disabble backups/.swp
set nowritebackup
set nobackup            " no backup~ files.
set noswapfile
set nowrap              " dont wrap lines
set number              " show line numbers

set incsearch           " Incremental search
set ignorecase          " case insensitive searching
set smartcase           " Case insensitive searches become sensitive with capitals

set laststatus=2        " Always show status line
set lazyredraw
" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

set smarttab            " sw at the start of the line, sts everywhere else
set backspace=2         " Allow backspacing over indent, eol, and the start of an insert
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set tabstop=2           " number of spaces a tab counts for
set shiftwidth=2        " spaces for autoindents, when  when using >>, <<, == etc.
set softtabstop=2       " spaces for autoindents when pressing <TAB
set expandtab           " turn a tabs into spaces

set showmode            " show mode in status bar (insert/replace/...)
set showcmd             " show typed command in status bar
set showcmd             " Show (partial) command in status line. Show the current command in the lower right corner
set showmatch           " Show matching brackets.
set ruler               " show cursor position in status bar
" Set the status line the way i like it
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

" Highlight the search
set hlsearch
" set the dir to directory of edit file
set autochdir
" nnoremap ,cd :cd %:p:h<CR>

" Automatically removing all trailing whitespace, Everytime the user issue a :w command
" autocmd BufWritePre * :%s/\s\+$//e

" remove extra TABs after paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

map <leader>f :FufFileWithCurrentBufferDir **/<C-M>
map <leader>b :FufBuffer<C-M>

" open defenition in a new Tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" bufferlist
map <silent> <F3> :call BufferList()<CR>

" open/close NERDTree
map <silent> <F4> :NERDTreeToggle<CR>

" Tagbar shortcut
nmap <silent> <F8> :TagbarToggle<CR>

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		 \ | wincmd p | diffthis
endif

" Highlight redundant whitespaces and tabs at the end of the line
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\S\zs\s\+$/
match RedundantSpaces /\s\+$/

let ruby_space_errors = 1
highlight ExtraWhitespace ctermbg=red guibg=red

