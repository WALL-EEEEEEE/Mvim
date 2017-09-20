command! -nargs=? -complete=file  Htmlpreview call  HTMLPreview(<f-args>)

let s:html_suffix=["html", "htm", "shtml", "shtm"]

"how to define whether the file is html file
function! HTMLPreview_isHtml(fname)

    "get the suffix
    let l:fsuffix = fnamemodify(a:fname,":e")
    
"    echo l:fsuffix
"    echom index(s:html_suffix,l:fsuffix)
    if index(s:html_suffix,l:fsuffix) >= 0
        return v:true
    else 
        return v:false
    endif

endfunction

"execute the system call

function! HTMLPreview_open(fname)
   call system('xdg-open '.a:fname)
endfunction

" Define the preview function 
function! HTMLPreview(...)
    "get the len of arguments
    let s:arg_len = len(a:000)

    if s:arg_len == 0
        "get current file name    
        let s:fname = expand('%')

"        echom HTMLPreview_isHtml(s:fname)
        if HTMLPreview_isHtml(s:fname) == v:true
"            echom "Open this file"
            call HTMLPreview_open(s:fname)
        else
            echo "This file is not html file"
            return 0
        endif
    endif

  
    if s:arg_len == 1

        let s:fname = a:000[0]

        if HTMLPreview_isHtml(s:fname) == v:true
            call HTMLPreview_open(s:fname)
        else
            echo "This file is not html file"
            return 0
        endif
    endif
 
    "just allow one argument
    if s:arg_len > 1
        echoerr "No more than one argument is allowed"
        return 0 
    endif
endfunction
