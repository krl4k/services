sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
brew install minikube

mv .brew ~/goinfre
mv .minikube ~/goinfre

ln -s ~/goinfre/.minikube .minikube
ln -s ~/goinfre/.kube .kube
ln -s ~/goinfre/.brew .brew