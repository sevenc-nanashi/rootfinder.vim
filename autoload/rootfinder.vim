let g:rootfinder#pattern = [
      \ '.git/',
      \ '.hg/',
      \ '.svn/',
      \ '.bzr/',
      \ 'Makefile',
      \ 'Gemfile',
      \ 'package.json',
      \ 'composer.phar',
      \ 'pyproject.toml',
      \ 'setup.py',
      \ 'requirements.txt',
      \ 'Pipfile',
      \ 'Cargo.toml',
      \ ]
let g:rootfinder#pattern_extend = []

function! g:rootfinder#find(base) abort
  for pattern in (g:rootfinder#pattern + g:rootfinder#pattern_extend)
    if pattern =~? '/$'
      if finddir(pattern, a:base . ';') != ''
        return fnamemodify(finddir(pattern, a:base . ';') .. '/..', ':p:h')
      endif
    else
      if findfile(pattern, a:base . ';') != ''
        return fnamemodify(findfile(pattern, a:base . ';'), ':p:h')
      endif
    endif
  endfor
  return ''
endfunction

