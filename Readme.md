# Docker Vim

Vim (neovim) in container

## Building

```
docker build -t danggrianto/docker-vim .
```

## Running

```
docker run --rm -it -v `pwd`:/app danggrianto/docker-vim <filename>
```

## Alias

```
alias v='docker run --rm -it -v ${PWD}:/app danggrianto/docker-vim'
```

# Tips

## Git

- `,hp` or `leader + hp` show changes
- `:Gdiff` show changes
- from `:Gdiff` window: `:diffput` to change/revert line

