# Docker Vim

Vim (neovim) in container

## Building

```
./build.sh
```

## Running

```
docker run --rm -it -u `whoami` -v `pwd`:/app danggrianto/docker-vim
```

## Alias

```
alias v='docker run --rm -it -u `whoami` -v `pwd`:/app danggrianto/docker-vim '
```

# Tips

## shortcut

- `,` leader key
- `,f` FloatTerm Show
- `,n` ALE Next error
- `,x` ALE Fix
- `,t` Tagbar Toggle
- `<C-t>` CtrlP fuzzy search
- `<C-n>` NERDTree toggle
- `<C-f>` NERDTree find
- `<C-s>` Save
- `<C-q>` Quit
- `,hp`  show changes
- `:Gdiff` show changes
- from `:Gdiff` window: `:diffput` to change/revert line

## Adding snippet

edit `*.snippets` file in `snippets` directory
