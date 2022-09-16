# Docker Vim

Vim (neovim) in container

## Building

```
docker build -t docker-vim .
```

## Running

```
docker run --rm -it -v ${PWD}:/app docker-vim <filename>
```

## Alias

```
alias dvim="docker run --rm -it -v ${PWD}:/app docker-vim"
```
