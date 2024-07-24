FROM ghcr.io/n3ddu8/ubuntu-odbc:main

ENV PATH=${PATH}:/opt/mssql-tools/bin

EXPOSE 1433

RUN apt update && apt dist-upgrade -y

RUN apt install \

    build-essential \
    cmake \
    g++ \
    gettext \
    git \
    libpq-dev \
    ninja-build \
    npm \
    python3-pip \
    python3-venv \
    software-properties-common \
    unixodbc-dev \
    unzip \
    wget \
    zsh \
    -y

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

RUN wget https://raw.githubusercontent.com/n3ddu8/zsh-config/main/zshrc
RUN mv zshrc ~/.zshrc
RUN wget https://raw.githubusercontent.com/n3ddu8/zsh-config/main/p10k.zsh
RUN mv p10k.zsh ~/.p10k.zsh

RUN chsh /bin/zsh

RUN git clone https://github.com/neovim/neovim /usr/src/neovim

WORKDIR /usr/src/neovim

RUN git checkout stable
RUN CMAKE_BUILD_TYPE=RelWithDebInfo
RUN make install

WORKDIR /usr/src

RUN rm -rf neovim

RUN git clone https://github.com/n3ddu8/nvim-config.git $HOME/.config/nvim

