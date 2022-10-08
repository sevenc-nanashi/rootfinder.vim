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
You can add more file/directory name with `g:rootfinder#pattern_extend`:
```vim
let g:rootfinder#pattern_extend = ['.my-root-file']
```

## License

This plugin is open source under MIT license.

