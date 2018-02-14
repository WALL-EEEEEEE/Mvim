" Define some functionality for assembly language 

command! NasmCP call NasmCompile() 

function! NasmCompile()

   let s:objpath = expand('%:p:h:h').'/bin/'
   let s:exepath = expand('%:p:h:h').'/bin/'
   let s:currentpath = expand('%:p')
   execute('SlimuxShellRun  nasm -f elf '.s:currentpath.' -o '.s:objpath.expand('%:r').'.o && ld -m elf_i386 -s -o'.s:exepath.expand('%:r').'   '.s:objpath.expand('%:r').'.o')

endfunction

