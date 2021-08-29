FROM golang:alpine

# Add useful packages
RUN apk add vim \
		curl \
		git \
		gcc \
		libc-dev \
		docker \
		fzf \
		ripgrep \
		zsh

# .vimrc is in the directory to allow you customize it and rebuild the container,
# also this allow you to create differents containers with personalized .vimrc
# this file has commands to create folders and to download the pluging manager
COPY .vimrc /root/.vimrc

# Install go linter
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.32.2

# Install vim plugins
RUN ["/bin/zsh", "-c", "vim -E -s -u '/root/.vimrc' +PlugInstall +qall"]
RUN ["/bin/zsh", "-c", "vim -E -s -u '/root/.vimrc' +GoInstallBinaries +qall"]

ENTRYPOINT /bin/zsh
