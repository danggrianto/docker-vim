# Docker Vim

Vim (neovim) in container

## Building

```
docker build -t docker-vim .
```

## Running

```
docker run --rm -it -v `pwd`:/app docker-vim <filename>
```

## Alias

```
alias dvim='docker run --rm -it -v ${PWD}:/app docker-vim'
```

# Tips 

## Git

- `,hp` or `leader + hp` show changes 
- `:Gdiff` show changes
- from `:Gdiff` window: `:diffput` to change/revert line
