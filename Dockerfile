FROM alpine:3.16

RUN apk update
RUN apk add curl git zsh fzf the_silver_searcher bat

RUN apk add --update nodejs yarn
RUN apk add --update python3 py3-pip py3-greenlet 
RUN pip3 install pynvim
RUN apk add neovim
RUN yarn global add prettier eslint vim-language-server

RUN mkdir -p ~/.config/nvim
ADD nvim/init.vim /root/.config/nvim/init.vim
ADD colors/ /root/.config/nvim/colors
ADD .gitconfig /root/.gitconfig

# install plugin
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

RUN nvim --headless +PlugInstall +qall
RUN nvim --headless +UpdateRemotePlugins +qall

ENV TERM=screen-256color

WORKDIR /app

ENTRYPOINT ["nvim"]

