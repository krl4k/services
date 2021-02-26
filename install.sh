#!/bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh && \
brew install minikube && \
git clone https://github.com/alexandregv/42toolbox.git && sh 42toolbox/init_docker.sh -y && \
mv .brew ~/goinfre && \
mv .minikube ~/goinfre && \
ln -s ~/goinfre/.minikube .minikube && \
ln -s ~/goinfre/.brew .brew

