# Docker Vim

Vim (neovim) in container

## Building

```
docker build -t danggrianto/docker-vim .
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

## Git

- `,hp` or `leader + hp` show changes
- `:Gdiff` show changes
- from `:Gdiff` window: `:diffput` to change/revert line

