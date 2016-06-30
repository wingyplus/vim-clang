function! clang#Format()
  call system("clang-format -i " . expand("%."))
  silent edit!
endfunction

function! clang#Rename(newname)
  let offset = line2byte(".") + col(".") - 1
  call system("clang-rename -i -offset=" . offset . " -new-name=" . a:newname . " " . expand("%."))
  silent edit!
endfunction

