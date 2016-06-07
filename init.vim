" Wraps paths to make them relative to this directory.
function! Dot(path)
  return '~/.config/nvim/' . a:path
endfunction

" Load all configuration modules.
for file in split(glob(Dot('modules/*.vim')), '\n')
  execute 'source' file
endfor

if filereadable("~/.nvim.local.vim")
    source ~/.nvim.local.vim
endif

:set number
" absolute line numbers in Insert mode
 autocmd InsertEnter * :set number
" relatie line number in Edit mode
" autocmd InsertLeave * :set relativenumber

" copy text to system clipbopard
vnoremap <C-c> "+y
vnoremap <C-v> "+p

" check javascript lint syntax check on file open
let g:syntastic_check_on_open=1
let g:deoplete#enable_at_startup = 1

