" A simple utils for grep specify script among the output of scriptnames
command! -nargs=1 -complete=file GrepScrips call GrepScriptNames(<f-args>)

function! GrepScriptNames(fname)

   "redirect following output to variable scripn
   redir => scriptn         
   "silently execute scripnames
   silent exe 'scriptnames' 
   "end the redirection
   redir end   
   "echo the call of grep with that input with the parttern 'patern'             
   echo system('grep "'.a:fname.'"',scriptn) 
endfunction

