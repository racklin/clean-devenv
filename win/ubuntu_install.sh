# 
# Install packages in WSL ubuntu
#
sudo apt-get update

# GNU stow for dotfiles
sudo apt-get install -y stow

# zsh
sudo apt-get install -y zsh

# langs
sudo apt-get install -y nodejs npm
sudo apt-get install -y golang

# dev-tools
sudo apt-get install -y git
sudo apt-get install -y curl
sudo apt-get install -y httpie 
sudo apt-get install -y jq

# terminal tools
sudo apt-get install -y tmux 
sudo apt-get install -y mosh

# Install Docker CLI and Compose
curl https://get.docker.com | sh
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o docker-compose 
chmod +x docker-compose
sudo mv docker-compose /usr/local/bin/docker-compose
