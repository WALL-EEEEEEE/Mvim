" BlackEagles vimrc for Linux && Windows
" (c) 2005 - 2015
" nocompatible has to be the first of all ( use the real vimpower )
set nocompatible
" filetype
filetype on
filetype plugin on
filetype indent on


" let $HOME = 'C:\Users\JohansRes\vim-for-php\vimfiles'

" set  runtimepath^=$HOME/vim-for-php/vimfiles

" let &rtp = substitute(&rtp,'vimfiles','vim-for-php/vimfiles','g')

" enable pathogen
" execute pathogen#infect("C:/Users/JohansRes/vim-for-php/vimfiles/bundle/{}")
execute pathogen#infect()
" build helptags
execute pathogen#helptags() 

" highlight the current cursor line
set cursorline


"specify the font-size and font-style
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Nerd\ Font\ 14

"change the default browser to preview markdown.
let g:livedown_browser="google-chrome-stable"


"specify the layout of winmanager

"customize  taglist left and nerdtree  right
nmap wm :WMToggle<cr>:TagbarToggle<cr>:wincmd h<cr> 


let g:winManagerWindowLayout='NERDTree|BufExplorer'

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" Exit taglist when only one window leaves
let Tlist_Exit_OnlyWindow=1

" settle for left tagbar  
let g:tagbar_left=1 

set encoding=utf-8
set fileencodings=utf-8,chinese,ISO-8859,latin-1,
if has("win32")
    set fileencoding=chiness
else 
    set fileencoding=utf-8
endif

"settle  messey code in menu bar
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"settle messey code in console
"language messages zh_CN.utf-8

" dont do matchparen
" let loaded_matchparen = 1

" big nesting with new regexpengine is slooooooow
set regexpengine=1

" set leader key
let mapleader = ','

" WHO ARE YOU ?
let g:AuthorName="jiayin"
let g:AuthorEmail="zhangjiayin99@gmail.com"

" DEFAULT WORKSPACE AREA
let g:Workspace="D:/WorkPlace"



syntax on

" set the colorsheme
set t_Co=16
let g:wwdc16_term_trans_bg =1
colorscheme dracula

" backup rules
set backup
set undofile
if has("win32")
    set backupdir=$TEMP
    set directory=$TEMP
    set viewdir=$TEMP
    set undodir=$TEMP
else
    silent execute '!mkdir -p $HOME/.vim/tmp/backup'
    set backupdir=$HOME/.vim/tmp/backup
    silent execute '!mkdir -p $HOME/.vim/tmp/swap'
    set directory=$HOME/.vim/tmp/swap
    silent execute '!mkdir -p $HOME/.vim/tmp/views'
    set viewdir=$HOME/.vim/tmp/views
    silent execute '!mkdir -p $HOME/.vim/tmp/undo'
    set undodir=$HOME/.vim/tmp/undo
endif

" commandline history
set history=1000

" backspace stuff
set backspace=indent,eol,start

" make higlighting faster
set nocursorcolumn " dont change bg color column on cursorposition
set nocursorline   " dont change bg color line on cursorpostion

" allow project specific settings
set secure

" some interface options
set ruler                 " show cursorposition
set showcmd               " display incomplete commands


"set nowrap                " dont wrap long lines
set wrap                  " wrap long lines
set incsearch             " incremental searching
set hlsearch              " highlight searchresult
set relativenumber
set number                " show linennumbers
set linespace=0           " stick together (usefull for nfo files)
set hidden                " hide buffer even when changed
set scrolloff=4           " keep at least 4 lines above or below the cursor
set colorcolumn=80,120    " show column 80 and 120 in different color
set wildmode=longest,full " command completion longest common part, then all.

" fileformat stuff
"set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
"set fileencodings=utf-8,gbk,ucs-bom,cp1250,iso-8859-1

" tabstop settings
set tabstop=4     " a tab found in a file will be represented with 4 columns
set softtabstop=4 " when in insert mode <tab> is pressed move 4 columns
set shiftwidth=4  " indentation is 4 columns
set expandtab     " tabs are tabs, do not replace with spaces

" statusline stuff
set laststatus=2
"set statusline=%<%F%h\ %(%y\ %)[%{&ff}]\ %{\"[\".(&fenc==\"\"?&enc:&fenc).\"]\"}\ %([%R%M]\ %)%=#%n\ %l/%L,%c%V\ %P
"if has("gui_gtk2") || has("gui_qt")
let g:airline_powerline_fonts=1
" endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#whitespace#enabled = 0

" diff settings
set diffopt=filler,iwhite,vertical

" php settings
"let php_sql_query=0
"let php_htmlInStrings =0
let php_parent_error_close=1
let php_parent_error_open=1


" snips author
let g:snips_author = g:AuthorName . " <" . g:AuthorEmail . ">"

" AutoClose settings
let g:AutoCloseOn=1 "switch on AutoClose
let g:AutoClosePairs= {'(': ')', '[': ']', '"': '"', "'": "'", '<': '>'}

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0 
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_java_javac_classpath='/mnt/D/Developer/WorkPlace/Personal-Workplace-Temp/Java/Thief/lib/mysql-connector-java-5.1.39-bin.jar:/mnt/D/Developer/WorkPlace/Personal-Workplace-Temp/Java/Thief/FrameTest2/'
let g:syntastic_java_javac_classpath='./:'
" enable omnifunc
set  omnifunc=syntaxcomplete#Complete


"Java keymaps (Plugin javacomplete2)
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
"specify the javafx lib path  
"let g:JavaComplete_LibsPath="/usr/share/java/openjfx/lib/:/mnt/D/Developer/WorkPlace/Personal-Workplace-Temp/Java/Thief/lib/:"
"let g:JavaComplete_LibsPath="/mnt/D/Developer/WorkPlace/Personal-Workplace-Temp/Java/AntTest/lib/:"

"let g:JavaComplete_ShowExternalCommandsOutput = 1




" SuperTab settings
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

" Ack.vim
if executable('ag')
    " ack.vim with the_silver_searcher
    let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
elseif executable('ack-grep')
    " ack.vim with renamed ack
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
endif

" CtrlP
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

" MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'phtml' : 1,
    \ 'twig' : 1,
    \}

" vim-signify
let g:signify_vcs_list = [ 'git', 'hg', 'svn' ]

" extra keymappings
" sudo save (when one forgets to sudo vim)
cmap w!! w !sudo tee % >/dev/null

" custom mapping
nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>
nnoremap <silent> <Leader>tb :TagbarToggle<CR>
nnoremap <silent> <Leader>ut :UndotreeToggle<CR>
nnoremap <silent> <Leader>bl :call BufferList()<CR>
nnoremap <silent> <Leader>lt :set list!<CR>

" nfo shit
 au BufReadPre *.nfo set fileencodings=cp437
 au BufReadPost *.nfo set fileencodings=utf-8,ucs-bom,cp1250
 au BufReadPre *.diz set fileencodings=cp437
 au BufReadPost *.diz set fileencodings=utf-8,ucs-bom,cp1250

if version >= 702
    autocmd BufWinLeave * call clearmatches()
endif


" For nodejs-complete
let g:nodejs_complete_config = {
            \  'js_compl_fn': 'jscomplete#CompleteJS',
            \  'max_node_compl_len': 15
            \}
" For jschecker
let g:syntastic_javascript_checkers = ['jslint']

" for neocomplete

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'

    " Plugin key-mappings.
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
          " <TAB>: completion.
         inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
        " <C-h>, <BS>: close popup and delete backword char.
       inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
      inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
     " Close popup by <Space>.
    "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
    
" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1
  
" Shell like behavior(not recommended).
set completeopt+=longest,menuone
"let g:neocomplete#enable_auto_select = 1
let g:neocomplete#disable_auto_complete = 1
inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
      let g:neocomplete#sources#omni#input_patterns = {}
  endif
let g:neocomplete#sources#omni#input_patterns.php = '[^.\t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:]*\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:]"*\t]\%(\.\|->\)\|\h\w*::'
  
" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"For JsBeautifier
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

"For hightlight brackets
set showmatch 
"searching the word while typing the search words
set incsearch

"tweak brackets  hightlight color
hi MatchParen cterm=bold ctermbg=none ctermfg=red

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"YoucompleteMe
let g:ycm_global_ycm_extra_conf="/home/johans/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++ '

" Shortcuts for   Slimux
noremap sb   :SlimuxREPLSendBuff<cr>
noremap sp   :SlimuxShellPrompt<cr>
vnoremap s   :SlimuxREPLSendSelection<cr> 
noremap sc   :SlimuxREPLConfigure<cr>
noremap Sc   :SlimuxShellConfigure<cr>
noremap sl   :SlimuxREPLSendLine<cr>

" NodeJs keymaps
"Disabled auto-reload on write for vim-reload plugin
let g:reload_on_write = 0


"auto check out the directory
set noautochdir
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' |  silent! lcd %:p:h |  endif
"To stop vim-rooter changing directory automatically
let g:rooter_manual_only = 1

"Fix the mess Chinese character display
au  InsertLeave * :redraw! 

"avoid annoyed fileformats
if has('win32') 
    set fileformat=dos
else 
    set fileformat=unix
endif

" disable the buggy red hightlight for chinese character
autocmd FileType markdown set nospell

" auto insert html tags in xml, html ,xhtml files
let g:closetag_filenames = "*.html,*xhtml,*.phtml,*.md,*.xml"

" test for tagbar-phpctags

let g:tagbar_phpctags_bin='~/.vim/bundle/tagbar-phpctags.vim/bin/phpctags'
let g:tagbar_phpctags_memory='512M'

" search related docsets
nnoremap <Leader>k :Dasht<Space>

" search ALL the docsets
nnoremap <Leader><Leader>k :Dasht!<Space>

" search related docsets
nnoremap <silent> <Leader>K :call Dasht([expand('<cWORD>'), expand('<cword>')])<Return>

" search ALL the docsets
nnoremap <silent> <Leader><Leader>K :call Dasht([expand('<cWORD>'), expand('<cword>')], '!')<Return>"


" search related docsets
vnoremap <silent> <Leader>K y:<C-U>call Dasht(getreg(0))<Return>

" search ALL the docsets
vnoremap <silent> <Leader><Leader>K y:<C-U>call Dasht(getreg(0),'!')<Return>"


let g:dasht_filetype_docsets = {} " filetype => list of docset name regexp
" When in Elixir, also search Erlang:
let g:dasht_filetype_docsets['elixir'] = ['erlang']
" When in C++, also search C, Boost, and OpenGL:
let g:dasht_filetype_docsets['cpp'] = ['^c$', 'boost', 'OpenGL']
" When in Python, also search NumPy, SciPy, and Pandas:
let g:dasht_filetype_docsets['python'] = ['(num|sci)py', 'pandas']
" When in HTML, also search CSS, JavaScript, Bootstrap, and jQuery:
let g:dasht_filetype_docsets['html'] = ['css', 'js', 'bootstrap']

call glaive#Install()

Glaive syncopate browser='google-chrome-stable'
Glaive syncopate !change_colorscheme clear_bg
Glaive syncopate colorscheme="default"
"show json quotes for current line
let g:indentLine_concealcursor=""
