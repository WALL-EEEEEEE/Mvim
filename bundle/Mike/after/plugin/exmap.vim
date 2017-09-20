" To do some mappings for different application execution
" All default execution map key is <F5>, depending on the Silmux plugin and
" tmux

" For java
autocmd FileType java  noremap <buffer> <F5> :execute('VimuxRunCommand("'.' /usr/bin/javac '.expand('%:p').'")')<cr> 

" For Vimscript 
autocmd FileType vim   noremap <buffer> <F5>  :execute('source '.expand('%:p'))<cr>
" For Shellscript
autocmd FileType shell noremap <buffer> <F5>  :execute('VimuxRunCommand("'.'. '.expand('%:p').'")')<cr>
" For javascript 
" newman test
autocmd FileType javascript  noremap <buffer> <F4>  :execute('VimuxRunCommand("'.'newman -c'.expand('%:p').'")')<cr>
" node execution
autocmd FileType javascript  noremap <buffer> <F5>  :execute('VimuxRunCommand("'.'node '.expand('%:p').'")')<cr>

" cpp execution
autocmd FileType cpp  noremap  <buffer>  <F5> :execute('VimuxRunCommand("'.'g++ -std=c++11 '.expand('%:p').' -o '.expand('%:p:h').'/../bin/'.expand('%:r').'")')<cr><cr>

"For Markdown
autocmd FileType markdown noremap <buffer> <F5>  :LivedownPreview<cr>

"For Assembly
autocmd FileType nasm  noremap <buffer> <F5>   :NasmCP<cr>


