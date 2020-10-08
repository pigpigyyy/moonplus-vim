" Language:    MoonScript
" Maintainer:  leafo <leafot@gmail.com>
" Based On:    CoffeeScript by Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/leafo/moonscript-vim
" License:     WTFPL

autocmd BufNewFile,BufRead *.mp set filetype=mp

function! s:DetectMoon()
    if getline(1) =~ '^#!.*\<mp\>'
        set filetype=mp
    endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectMoon()
