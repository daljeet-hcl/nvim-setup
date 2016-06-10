augroup neomake_hooks
    autocmd!
    autocmd BufRead,BufWritePost * Neomake
augroup END

"let g:neomake_javascript_enabled_makers = ['standard', 'flow']
"let g:neomake_jsx_enabled_makers = ['standard', 'flow']

autocmd! BufEnter,BufWritePost * Neomake

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['jshint','jscs']
