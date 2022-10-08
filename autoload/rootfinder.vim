let g:rootfinder#pattern = [
      \ '.git/',
      \ '.hg/',
      \ '.svn/',
      \ '.bzr/',
      \ 'Makefile',
      \ 'Gemfile',
      \ 'Rakefile',
      \ 'package.json',
      \ 'package-lock.json',
      \ 'yarn.lock',
      \ 'pnpm-lock.yaml',
      \ 'composer.phar',
      \ 'pyproject.toml',
      \ 'setup.py',
      \ 'requirements.txt',
      \ 'Pipfile',
      \ 'Cargo.toml',
      \ 'Cargo.lock',
      \ 'go.mod',
      \ 'go.sum',
      \ 'build.gradle',
      \ 'build.sbt',
      \ 'pom.xml',
      \ 'build.xml',
      \ 'build.boot',
      \ 'build.gradle.kts',
      \ 'build.sc',
      \ 'build.bazel',
      \ 'WORKSPACE',
      \ 'WORKSPACE.bazel',
      \ 'Dockerfile',
      \ 'docker-compose.yml',
      \ 'docker-compose.yaml',
      \ 'README.md',
      \ 'README.rst',
      \ 'README',
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

