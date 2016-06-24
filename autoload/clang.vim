function! clang#Format()
  call system("clang-format -i " . expand("%."))
  silent edit!
endfunction

