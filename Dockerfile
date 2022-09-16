FROM alpine:3.16

RUN apk update
RUN apk add neovim curl git zsh

RUN mkdir -p ~/.config/nvim
ADD nvim/init.vim /root/.config/nvim/init.vim

# install plugin
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

RUN nvim --headless +PlugInstall +qall

ENV TERM=screen-256color

# Install oh-my-zsh
# RUN sh -c '$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)'

WORKDIR /app

# ENTRYPOINT ["nvim"]
