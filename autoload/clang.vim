function! clang#Format()
  let l:tmpname = tempname()
  call writefile(getline(1, '$'), l:tmpname)
  let out = system("clang-format -i " . l:tmpname)

  call rename(l:tmpname, expand("%"))
  silent edit!
  call delete(l:tmpname)
endfunction

