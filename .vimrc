" Mvim's  vimrc for Linux && Windows
" @copyright by @johans
" 2018-02-12

"Init Settings 
"------------------------------------------------------------------------------------------------------------------------------------------------

set nocompatible     "enable nocompatible mode

"Package Manager Settings
"------------------------------------------------------------------------------------------------------------------------------------------------
call plug#begin('~/.vim/bundle')
"--basic
Plug '~/.vim/bundle/basic/ack'
Plug '~/.vim/bundle/basic/airline'
Plug '~/.vim/bundle/basic/auto-pairs'
Plug '~/.vim/bundle/basic/bufferlist'
Plug '~/.vim/bundle/basic/ctrlp'
Plug '~/.vim/bundle/basic/dracula-theme'
Plug '~/.vim/bundle/basic/emmet-vim'
Plug '~/.vim/bundle/basic/gist-vim'
Plug '~/.vim/bundle/basic/github.vim'
Plug '~/.vim/bundle/basic/indentLine'
Plug '~/.vim/bundle/basic/MatchTag'
Plug '~/.vim/bundle/basic/neocomplete.vim'
Plug '~/.vim/bundle/basic/nerdtree'
"Plug '~/.vim/bundle/basic/nerdtree-ack'
Plug '~/.vim/bundle/basic/onehalf-theme'
Plug '~/.vim/bundle/basic/papercolor-theme'
Plug '~/.vim/bundle/basic/startuptime.vim'
Plug '~/.vim/bundle/basic/supertab'
Plug '~/.vim/bundle/basic/tagbar'
Plug '~/.vim/bundle/basic/ultisnips'
Plug '~/.vim/bundle/basic/undotree'
Plug '~/.vim/bundle/basic/vim-colors-solarized'
Plug '~/.vim/bundle/basic/vim-devicons'
Plug '~/.vim/bundle/basic/vim-glaive'
Plug '~/.vim/bundle/basic/vim-localvimrc'
Plug '~/.vim/bundle/basic/vim-maktaba'
Plug '~/.vim/bundle/basic/vim-misc'
Plug '~/.vim/bundle/basic/vim-rooter'
Plug '~/.vim/bundle/basic/vim-snippets'
Plug '~/.vim/bundle/basic/vim-surround'
Plug '~/.vim/bundle/basic/vim-syncopate'
Plug '~/.vim/bundle/basic/vimagit'
Plug '~/.vim/bundle/basic/vimproc.vim'
Plug '~/.vim/bundle/basic/webapi-vim'
Plug '~/.vim/bundle/basic/winmanager'
Plug '~/.vim/bundle/basic/Mike'
Plug '~/.vim/bundle/basic/vim-startify'
Plug '~/.vim/bundle/basic/vim-leader-guide'
Plug '~/.vim/bundle/basic/mirror.vim'
Plug '~/.vim/bundle/basic/vim-wintabs'
Plug '~/.vim/bundle/basic/vim-wintabs-powerline'
"--program
Plug '~/.vim/bundle/program/nerdcommenter', { 'for': ['java','php','cpp','c','javascript'] }
Plug '~/.vim/bundle/program/syntastic', { 'for': ['java','php','cpp','c','javascript'] }
Plug '~/.vim/bundle/program/vdebug', { 'for': ['java','php','cpp','c','javascript'] }
Plug '~/.vim/bundle/program/YouCompleteMe', { 'for': ['cpp','c','javascript','python','go','ruby'] }
Plug '~/.vim/bundle/program/vim-wakatime', { 'for': ['java','php','cpp','c','javascript'] }

"--php
Plug '~/.vim/bundle/php/php-documentor-vim', { 'for': 'php' }
Plug '~/.vim/bundle/php/php_getset', { 'for': 'php' }
Plug '~/.vim/bundle/php/phpcomplete-extended', { 'on': ['PHPCompleteExtendedReload'] }
Plug '~/.vim/bundle/php/phpcomplete.vim', { 'for': 'php' }
"--java
Plug '~/.vim/bundle/java/jcommenter.vim', { 'for': 'java' }
Plug '~/.vim/bundle/java/vim-javacomplete2', { 'for': 'java' }
"--javascript
Plug '~/.vim/bundle/js/javascript', { 'for': ['json','javascript'] }
Plug '~/.vim/bundle/js/vim-jsbeautify', { 'for': ['javascript','json']}
Plug '~/.vim/bundle/js/vim-jsdoc', { 'for': ['javascript','json']}
Plug '~/.vim/bundle/js/vison', { 'for': ['javascript','json']}
"--matlab
Plug '~/.vim/bundle/matlab/matlab-support', { 'for': 'matlab' }
Plug '~/.vim/bundle/matlab/vim-matlab', { 'for': 'matlab'}
"--markdown
Plug '~/.vim/bundle/markdown/vim-pandoc-syntax', { 'for': 'markdown' }
Plug '~/.vim/bundle/markdown/vim-livedown', { 'for': 'markdown'}
"--assemble
Plug '~/.vim/bundle/assemble/vim-gas', { 'for': 'nasm'}
"--viml
Plug '~/.vim/bundle/viml/vim-reload' , { 'for': 'vim' }
call plug#end()

"Custom Settings
set t_Co=256
set cursorline       "specify the font-size and font-style
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Nerd\ Font\ 14
set encoding=utf-8
set fileencodings=utf-8,chinese,ISO-8859,latin-1,
set regexpengine=1   "big nesting with new regexpengine is slow
set history=1000   
set backspace=indent,eol,start "backspace stuff
set secure           "allow project specific settings
set showcmd               " display incomplete commands
set wrap                  " wrap long lines
set incsearch             " incremental searching
set hlsearch              " highlight searchresult
set relativenumber
set number                " show linennumbers
set linespace=0           " stick together (usefull for nfo files)
set hidden                " hide buffer even when changed
set scrolloff=4           " keep at least 4 lines above or below the cursor
set colorcolumn=80,120    " show column 80 and 120 in different color
set tabstop=4     " a tab found in a file will be represented with 4 columns
set softtabstop=4 " when in insert mode <tab> is pressed move 4 columns
set shiftwidth=4  " indentation is 4 columns
set expandtab     " tabs are tabs, do not replace with spaces
set diffopt=filler,iwhite,vertical " diff settings
set nobackup 
set noswapfile
set pastetoggle=<F2>
set wildmenu      "enable commandline completion menu
if has("win32")
    set fileencoding=chiness
else 
    set fileencoding=utf-8
endif
"avoid annoyed fileformats
if has('win32') 
    set fileformat=dos
else 
    set fileformat=unix
endif
syntax   on
filetype on
filetype plugin on
filetype indent on
let mapleader = ','  "set leader key
"tweak brackets  hightlight color
hi MatchParen cterm=bold ctermbg=none ctermfg=red 
au  InsertLeave * :redraw!  "fix the mess Chinese character display
autocmd FileType markdown set nospell " disable the buggy red hightlight for chinese character
colorscheme onehalflight 

"Packages Configurations
"------------------------------------------------------------------------------------------------------------------------------------------------

"--Livedown
let g:livedown_browser="google-chrome-stable" "default browser
let g:livedown_port = 8080

"--Winmanager
let g:winManagerWindowLayout='NERDTree|BufExplorer'

"--Tagbar
let Tlist_Exit_OnlyWindow=1 "close taglist when only one window leaves
let g:tagbar_left=1 
let g:tagbar_phpctags_bin='~/.vim/bundle/tagbar-phpctags.vim/bin/phpctags'
let g:tagbar_phpctags_memory='512M'

"--Airline
let g:airline_theme='onehalflight'
let g:airline_powerline_fonts=1
set laststatus=2 
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#whitespace#enabled = 0

" php settings
"let php_sql_query=0
"let php_htmlInStrings =0
let php_parent_error_close=1
let php_parent_error_open=1

"--AutoClose 
let g:AutoCloseOn=1 
let g:AutoClosePairs= {'(': ')', '[': ']', '"': '"', "'": "'", '<': '>'}

"--Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0 
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_java_javac_classpath='./:'
set  omnifunc=syntaxcomplete#Complete  "enable omnifunc
"options for nodejs-complete
let g:nodejs_complete_config = {
            \  'js_compl_fn': 'jscomplete#CompleteJS',
            \  'max_node_compl_len': 15
            \}
"specify checker for js
let g:syntastic_javascript_checkers = ['jslint']
"set for python 
let g:syntastic_python_python_exec = '/usr/local/bin/python3.7'
"show json quotes for current line
let g:indentLine_concealcursor=""
let g:ycm_python_binary_path="/usr/local/bin/python3.7"

"--Javacomplete2
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java map <leader>b :call javacomplete#GoToDefinition()<CR>
"class import
autocmd Filetype java nmap <F4> <Plug>(JavaComplete-Imports-Add) \
   imap <F4> <Plug>(JavaComplete-Imports-Add) \
   "add all missing imports with <F5>
   nmap <F3> <Plug>(JavaComplete-Imports-AddMissing) \
   imap <F3> <Plug>(JavaComplete-Imports-AddMissing) \
   "remove all missing imports with F6
   nmap <F6> <Plug>(JavaComplete-Imports-RemoveUnused) \
   imap <F6> <Plug>(JavaComplete-Imports-RemoveUnused) \
let g:JavaComplete_ShowExternalCommandsOutput = 1


"--SuperTab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"--Ack.vim
if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column --smart-case' "ack.vim with the_silver_searcher
elseif executable('ack-grep')
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"       "ack.vim with renamed ack
endif

"--CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 100000
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

if executable('ag')
    let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
elseif executable('ack-grep')
    let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
elseif executable('ack')
    let s:ctrlp_fallback = 'ack %s --nocolor -f'
else
    let s:ctrlp_fallback = 'find %s -type f'
endif

"--Vim-signify
let g:signify_vcs_list = [ 'git', 'hg', 'svn' ]

"--Neocomplete
"disable autocomplpop.
let g:acp_enableAtStartup = 0
"use neocomplete.
let g:neocomplete#enable_at_startup = 1
"use smartcase.
let g:neocomplete#enable_smart_case = 1
"set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
"define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'
set completeopt+=longest,menuone
let g:neocomplete#disable_auto_complete = 1
"enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
      let g:neocomplete#sources#omni#input_patterns = {}
  endif
let g:neocomplete#sources#omni#input_patterns.php = '[^.\t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:]*\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:]"*\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"--JsBeautifier
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
"  for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
"  for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

"--UltiSnips
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"--YoucompleteMe
let g:ycm_global_ycm_extra_conf="~/.vim/bundle/program/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++ '

"--Vim-reload
let g:reload_on_write = 0   "disabled auto-reload on write for vim-reload plugin

"--Vim-closetag
let g:closetag_filenames = "*.html,*xhtml,*.phtml,*.md,*.xml"

"--Dasht-view document in terminal
let g:dasht_filetype_docsets = {} " filetype => list of docset name regexp
" When in Elixir, also search Erlang:
let g:dasht_filetype_docsets['elixir'] = ['erlang']
" When in C++, also search C, Boost, and OpenGL:
let g:dasht_filetype_docsets['cpp'] = ['^c$', 'boost', 'OpenGL']
" When in Python, also search NumPy, SciPy, and Pandas:
let g:dasht_filetype_docsets['python'] = ['(num|sci)py', 'pandas']
" When in HTML, also search CSS, JavaScript, Bootstrap, and jQuery:
let g:dasht_filetype_docsets['html'] = ['css', 'js', 'bootstrap']

"--Syncopate-share code with syntax in vim
call glaive#Install()
Glaive syncopate browser='google-chrome-stable'
Glaive syncopate !change_colorscheme clear_bg
Glaive syncopate colorscheme="default"

"--Phpcomplete

"--Phpcomplete-extend
let g:phpcomplete_index_composer_command='composer'
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

"--Startify

function! s:filter_header(lines) abort
        let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
        let centered_lines = map(copy(a:lines),
            \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
        return centered_lines
    endfunction
let g:ascii = [
\ '                                        _|                      ',
\ '                                                                ',
\ '                _|_|_|  _|_|    _|      _|      _|_|_|  _|_|    ',
\ '                _|    _|    _|  _|      _|  _|  _|    _|    _|  ',
\ '                _|    _|    _|    _|  _|    _|  _|    _|    _|  ',
\ '                _|    _|    _|      _|      _|  _|    _|    _|  ',
\ '      _   _   _   _     _   _   _   _   _     _   _   _     _   _   _   _  ',
\ '     / \ / \ / \ / \   / \ / \ / \ / \ / \   / \ / \ / \   / \ / \ / \ / \ ',
\ '    ( 2 | 0 | 1 | 8 ) ( H | a | p | p | y ) ( N | e | w ) ( Y | e | a | r )',
\ '     \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/   \_/ \_/ \_/ \_/ ',
\ ]
let g:startify_custom_header = s:filter_header(g:ascii)
set viminfo='100,n$HOME/.vim/files/info/viminfo

"--vim-wintabs

"Mappings
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

"--Common
"easy to write and save file
nnoremap ; :
"easy clean highlight search
nmap <silent> ,/ :nohlsearch<CR>:
"quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
"--Winmanager
"easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
"--NERDTree
"easy open up NERDTree,Tagbar and Undotree plugins
nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>
nnoremap <silent> <Leader>tb :TagbarToggle<CR>
nnoremap <silent> <Leader>ut :UndotreeToggle<CR>
nnoremap <silent> <Leader>bl :call BufferList()<CR>
nnoremap <silent> <Leader>lt :set list!<CR>
"--Dasht
"search related docsets
nnoremap <Leader>k :Dasht<Space>
"search all the docsets
nnoremap <Leader><Leader>k :Dasht!<Space>
"search related docsets
nnoremap <silent> <Leader>K :call Dasht([expand('<cWORD>'), expand('<cword>')])<Return>
"search ALL the docsets
nnoremap <silent> <Leader><Leader>K :call Dasht([expand('<cWORD>'), expand('<cword>')], '!')<Return>"
"search related docsets
vnoremap <silent> <Leader>K y:<C-U>call Dasht(getreg(0))<Return>
"search ALL the docsets
vnoremap <silent> <Leader><Leader>K y:<C-U>call Dasht(getreg(0),'!')<Return>"
"--Neocomplete
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
          return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
" For no inserting <CR> key.
              "return pumvisible() ? "\<C-y>" : "\<CR>"
          endfunction
"<TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"<C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"--Slimux
noremap sb   :SlimuxREPLSendBuff<cr>
noremap sp   :SlimuxShellPrompt<cr>
vnoremap s   :SlimuxREPLSendSelection<cr> 
noremap sc   :SlimuxREPLConfigure<cr>
noremap Sc   :SlimuxShellConfigure<cr>
noremap sl   :SlimuxREPLSendLine<cr>

"Fix or Compatible with plugins
