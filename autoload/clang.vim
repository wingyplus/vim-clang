function! clang#Format()
  let path = shellescape(expand("%:p"))
  execute "!clang-format -i " . path
  silent edit!
endfunction

