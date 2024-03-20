set encoding=utf-8
let mapleader=" "

" use vim instead of vi
set nocompatible

" Turn on syntax highlighting.
syntax on

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
let g:gruvbox_italic=1
autocmd vimenter * ++nested colorscheme gruvbox

Plug 'vim-airline/vim-airline'
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

Plug 'edkolev/tmuxline.vim'
let g:tmuxline_theme='airline'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#P',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%H:%M:%S','%F'],
      \'z'    : '#(whoami)'}

Plug 'preservim/nerdtree'
if !empty($NERDTREE_BOOKMARKS)
    if filereadable($NERDTREE_BOOKMARKS)
	let g:NERDTreeBookmarksFile=$NERDTREE_BOOKMARKS
    endif
endif
autocmd FileType nerdtree setlocal number
autocmd FileType nerdtree setlocal relativenumber
autocmd FileType nerdtree setlocal nowrap
autocmd FileType nerdtree setlocal sidescroll=3
autocmd FileType nerdtree setlocal sidescrolloff=6

Plug 'moll/vim-bbye'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
nmap <LEADER>uu :UndotreeToggle<CR>

Plug 'simeji/winresizer'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
let g:NERDTreeHighlightCursorline=0

call plug#end()

" Disable the default Vim startup message.
"set shortmess+=I

" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" p> " 'Q' in normal mode enters Ex mode. You almost never want this.
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch
set nohlsearch

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
"set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" ...and in insert mode
imap <silent> <Left>  <ESC>:echoe "Use h"<CR>
imap <silent> <Right> <ESC>:echoe "Use l"<CR>
imap <silent> <Up>    <ESC>:echoe "Use k"<CR>
imap <silent> <Down>  <ESC>:echoe "Use j"<CR>
nmap <silent> <Left>  :echoe "Use h"<CR>
nmap <silent> <Right> :echoe "Use l"<CR>
nmap <silent> <Up>    :echoe "Use k"<CR>
nmap <silent> <Down>  :echoe "Use j"<CR>

nmap <silent> S :w<CR>
nmap <silent> Q :q<CR>
nmap <silent> R :source $MYVIMRC<CR>
nmap <silent> <C-C> :close<CR>
nnoremap <silent> <C-J> 5j
nnoremap <silent> <C-K> 5k

nmap s <nop>
nmap <silent> sl :set splitright<CR>:vsplit<CR>
nmap <silent> sh :set nosplitright<CR>:vsplit<CR>
nmap <silent> sj :set splitbelow<CR>:split<CR>
nmap <silent> sk :set nosplitbelow<CR>:split<CR>

nmap <silent> <LEADER>te :tabe<CR>
nmap <silent> <LEADER>tp :tabprev<CR>
nmap <silent> <LEADER>tn :tabnext<CR>
nmap <silent> <LEADER>tt :NERDTreeToggle<CR>

nmap <silent> <LEADER>bp :bprev<CR>
nmap <silent> <LEADER>bn :bnext<CR>
nmap <silent> <LEADER>bd :Bdelete<CR>

nmap <silent> <LEADER>cl :clist<CR>
nmap <silent> <LEADER>cp :cprev<CR>
nmap <silent> <LEADER>cn :cnext<CR>
nmap <silent> <LEADER>co :copen<CR>
nmap <silent> <LEADER>cc :cclose<CR>

" nmap <up> :res +5<CR>
" nmap <down> :res -5<CR>
" nmap <left> :vertical res -5<CR>
" nmap <right> :vertical res +5<CR>
"
" Show matching brackets.
set showmatch

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

set tabstop=8
set softtabstop=4
set shiftwidth=4

"Use 24-bit (true-color) mode in Vim/Neovim
set termguicolors

" Display an incomplete command in the lower right corner of the Vim window,
set showcmd

" This tells Vim to keep a backup copy of a file when overwriting it.  But not
" on the VMS system, since it keeps old versions of files already.  The backup
" file will have the same name as the original file with \"~" added.  See |07.4|
" This also sets the 'undofile' option, if available.  This will store the
" multi-level undo information in a file.  The result is that when you change a
" file, exit Vim, and then edit the file again, you can undo the changes made
" previously.  It's a very powerful and useful feature, at the cost of storing a
" file.  For more information see |undo-persistence|.
" if has("vms")
"     set nobackup
" else
"     set backup
"     if has('persistent_undo')
" 	set undofile
"     endif
" endif

set scroll=9
set scrolloff=10

" long lines wrap
set wrap

" highlight the screen line of the cursor
set cursorline

" set command-line completion shows a list of matches
set wildmenu

set encoding=utf-8

" show tab and trail
set listchars=tab:▸\ ,trail:▫
set list

" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set autochdir

set ttimeoutlen=10

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set rtp+=$HOME/.fzf

" let g:fzf_action = {
"     \ 'ctrl-t': 'tab split',
"     \ 'ctrl-x': 'split',
"     \ 'ctrl-v': 'vsplit' }

set nobackup
set nowritebackup
set updatetime=100
