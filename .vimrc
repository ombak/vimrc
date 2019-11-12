" set the runtime path include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim airline - status bar and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NERDTree 
Plugin 'scrooloose/nerdtree'

" NERDTree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" NERDCommenter
Plugin 'scrooloose/nerdcommenter'

" Colorscheme
Plugin 'fneu/breezy'

" All of your  plugins must added before following line
call vundle#end()
filetype plugin indent on					"required

" ====================
" Vim settings and mappings

" no vi-compatible
set nocompatible						    " be iMproved, required
filetype plugin on						    " required


" Tabs and spacing---
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" tab length exception on some file types
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

" always show status bar
set ls=2

" incremental search
set incsearch

" highlight search results
set hlsearch

" syntax highlight on
syntax on

" show line number
set nu

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp					" directory to place swap files in
set backup							            " make backup file
set backupdir=~/.vim/dirs/backups				" where to put backup files
set undofile							        " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo

" store yankring history file there too
let g:yankring_history_dir = '~/.vim/dirs/'

" create neede directories if they don't exist

if !isdirectory(&backupdir)
	call mkdir(&backupdir, "p")
endif

if !isdirectory(&directory)
	call mkdir(&directory, "p")
endif

if !isdirectory(&undodir)
	call mkdir(&undodir, "p")
endif


" ===============================
" Plugin settings and map

" NERDTree

" Toggle NERDTree display
map <F3> :NERDTreeToggle<CR> 

" Open NERDTree with current file selected
nmap ,t :NERDTreeFind<CR>

" Don't show these file types
let NERDTreeIgnore=['\.pyc$', '\.pyo$']

" NERDCommenter---

" Add space after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_python = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = {'python': {'left': '"""','right': '"""'}}

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" Set Colorsheme---
set background=dark
set termguicolors
colorscheme breezy

" Airline theme
let g:airline_theme='breezy'

" Enable all python highlight
let python_highlight_all = 1

" set the runtime path include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim airline - status bar and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NERDTree 
Plugin 'scrooloose/nerdtree'

" NERDTree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" NERDCommenter
Plugin 'scrooloose/nerdcommenter'

" Vim-GitGutter
Plugin 'airblade/vim-gitgutter'

" FZF
Plugin 'junegunn/fzf.vim'

" Colorscheme
Plugin 'fneu/breezy'

" All of your  plugins must added before following line
call vundle#end()
filetype plugin indent on					"required

" ====================
" Vim settings and mappings

" no vi-compatible
set nocompatible						    " be iMproved, required
filetype plugin on						    " required


" Tabs and spacing---
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" tab length exception on some file types
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

" always show status bar
set ls=2

" incremental search
set incsearch

" highlight search results
set hlsearch

" syntax highlight on
syntax on

" show line number
set nu

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp					" directory to place swap files in
set backup							            " make backup file
set backupdir=~/.vim/dirs/backups				" where to put backup files
set undofile							        " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo

" store yankring history file there too
let g:yankring_history_dir = '~/.vim/dirs/'

" create neede directories if they don't exist

if !isdirectory(&backupdir)
	call mkdir(&backupdir, "p")
endif

if !isdirectory(&directory)
	call mkdir(&directory, "p")
endif

if !isdirectory(&undodir)
	call mkdir(&undodir, "p")
endif


" ===============================
" Plugin settings and map

" NERDTree

" Toggle NERDTree display
map <F3> :NERDTreeToggle<CR> 

" Open NERDTree with current file selected
nmap ,t :NERDTreeFind<CR>

" Don't show these file types
let NERDTreeIgnore=['\.pyc$', '\.pyo$']

" NERDCommenter---

" Add space after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_python = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = {'python': {'left': '"""','right': '"""'}}

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" Set Colorsheme---
set background=dark
set termguicolors
colorscheme breezy

" Airline theme
let g:airline_theme='breezy'

" Enable all python highlight
let python_highlight_all = 1

