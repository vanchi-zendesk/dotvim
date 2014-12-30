" Reqd for pathogen to work
execute pathogen#infect()
" Break bad habits
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim
" Set 256 colors and solarized
set t_Co=256
" let g:solarized_termcolors=256
syntax enable
set bg=dark
colorscheme default
" set bg=light
" colorscheme morning
filetype plugin indent on
" Enable mouse
"set mouse=a


" Make backspace work normally in insert mode
set backspace=indent,eol,start

" Ignore case unless we use uppercase.
set ignorecase
set smartcase
set incsearch
set hlsearch
set number

" Fix tabs and indentation
set shiftwidth=4
set softtabstop=4
" ruby code tends to use smaller tabs
autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2
autocmd FileType org setlocal shiftwidth=2 softtabstop=2
" ruby includes ! and ? in method names (array.empty?)
autocmd FileType ruby setlocal iskeyword+=!,?

" Set some filetypes based on filename/extensions
autocmd BufRead,BufNewFile *.json set ft=javascript
autocmd BufRead,BufNewFile *.ru set ft=ruby
autocmd BufRead,BufNewFile Capfile set ft=ruby
autocmd BufRead,BufNewFile Gemfile set ft=ruby

set expandtab         " use spaces instead of tabstops
set smarttab          " use shiftwidth when hitting tab instead of sts (?)
set autoindent        " try to put the right amount of space at the beginning of a new line
set nostartofline     " don't jump to start of line as a side effect (i.e. <<)
set showmatch         " briefly jump to matching }] when typing

" Alternate buffer/file
nmap \\ :e#<CR>
" next buffer
nmap <C-n> :bnext<CR>
" prev buffer
nmap <C-p> :bprev<CR>

set tags=./tags;$HOME

let mapleader=","

nmap <leader>l :setlocal number!<CR>
nmap <leader>o :set paste!<CR>
nmap <leader>q :nohlsearch<CR>
nmap <leader>w :set wrap!<CR>
nmap <leader>t :TlistToggle<CR>

" Syntastic stuff
let g:syntastic_enable_signs=1
" let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1

" Syntastic statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_quiet_messages = {'level': 'warnings'}


" Ignore some filetypes while ctrl-p caches
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Code review stuff
let g:CodeReviewer_reviewer="VKA"  " Your initials
let g:CodeReviewer_reviewFile=$HOME . "/review.rev"

"Nerdtree
nmap <leader>n :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1
" Highlight extra whitespace
highlight ExtraWhitespace ctermbg=darkred guibg=#382424
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" the above flashes annoyingly while typing, be calmer in insert mode
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/


"Window stuff
nmap <leader>m :only<CR>
nmap <leader>v :vsplit<CR>
nmap <leader>s :split<CR>


set foldmethod=manual
set foldlevelstart=20

" Autoclose fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" airline
" make statusline appear always
set laststatus=2
set guifont=Consolas:h13

"markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1

