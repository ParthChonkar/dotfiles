-- I should lua-ize this at some point

vim.cmd([[

function! ZidGenF()
    let date_output = system('date +"%m%d%Y%H%M%S"')
    " Remove the trailing newline from the date output
    let date_output = substitute(date_output, '\n', '', 'g')
    let result = "ID:" . date_output
    " Insert the result into the buffer
    call setline('.', result) 
endfunction

command! ZidGen call ZidGenF()

command! ZidFind execute 'tabnew ' . system('grep -l -r "ID:'  . expand('<cword>') . '"*')

function! ZtagListF() 
    let files_grep = system('grep -l -r "TAGS:.*' . expand('<cword>') . '.*" *')
    let files_list = split(files_grep, '\n')
    call filter(files_list, 'v:val != ""')
    let qfix_list = []
    " Set a quick fix list of these files
    for file in files_list
        " Set the title as the tag line in the file
        let tag_lines =  system('grep "TAGS:" ' . file)
        let tag_line = substitute(split(tag_lines, '\n')[0], '\n', '', 'g')
        let qfix_entry = {'filename': file, 'lnum': 1, 'col': 1, 'text': tag_line}
        call add(qfix_list, qfix_entry)
    endfor
    call setqflist(qfix_list, 'r')
    " Open the qflist modal
    copen
endfunction


command! ZtagList call ZtagListF()

function! ZTodayF()
    let date_output = system('date +"%Y%m%d"')
    " Remove the trailing newline from the date output
    let date_output = substitute(date_output, '\n', '', 'g')
    if !isdirectory('transient')
        throw "Can't find transient directory!"
    endif
    execute 'e transient/' . date_output . '.md'
endfunction

command! ZToday call ZTodayF()

]])
