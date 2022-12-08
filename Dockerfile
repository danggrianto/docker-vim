FROM alpine:3.16

ARG USER_ID

RUN apk update
RUN apk add curl git zsh fzf the_silver_searcher bat ctags

RUN apk add --update nodejs yarn
RUN apk add --update python3 py3-pip py3-greenlet 
RUN pip3 install pynvim black pylint
RUN apk add neovim
RUN yarn global add prettier eslint vim-language-server

RUN adduser -D $USER_ID
USER $USER_ID

RUN mkdir -p /home/$USER_ID/.config/nvim
ADD ./nvim/init.vim /home/$USER_ID/.config/nvim/init.vim
ADD ./colors/ /home/$USER_ID/.config/nvim/colors
ADD .gitconfig /home/$USER_ID/.gitconfig
ADD ./snippets/ /home/$USER_ID/.vim/snippets

# install plugin
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

RUN nvim --headless +PlugInstall +qall
RUN nvim --headless +UpdateRemotePlugins +qall

ENV TERM=screen-256color

WORKDIR /app

ENTRYPOINT ["nvim"]

