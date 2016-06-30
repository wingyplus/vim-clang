command! ClangFmt call clang#Format()
command! -nargs=1 ClangRename call clang#Rename(<f-args>)
