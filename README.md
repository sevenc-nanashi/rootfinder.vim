# rootfinder.vim

rootfinder is a Vim plugin that adds `g:rootfinder#find` function.

## Example usage
```vim
let root = g:rootfinder#find(expand('%:p:h'))
if len(root) < 1
  let root = '.'
endif
execute 'Fern ' .. fnameescape(root) .. ' -drawer -width=40'
```

## License

This plugin is open source under MIT license.

