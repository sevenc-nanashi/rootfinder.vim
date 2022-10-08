# findroot.vim

findroot is a Vim plugin that adds `g:findroot#findroot` function.

## Example usage
```vim
let root = g:findroot#findroot(expand('%:p:h'))
if len(root) < 1
  let root = '.'
endif
execute 'Fern ' .. fnameescape(root) .. ' -drawer -width=40'
```

## License

This plugin is open source under MIT license.

