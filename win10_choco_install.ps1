# Development Environment for clear installed windows10 
#
#### racklin@gmail.com 2018/6/20

# Install chocolatey 
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# langs
choco install -y jdk8
choco install -y nodejs
choco install -y golang

# browsers
choco install -y firefox
choco install -y googlechrome

# tools
choco install -y git
choco install -y 7zip
choco install -y notepadplusplus
choco install -y cmdermini
choco install -y 1password4
choco install -y winaero-tweaker
choco install -y flashplayerplugin


# network-tools
choco install -y dropbox
choco install -y filezilla


# vmware
choco install -y vagrant
choco install -y vmwareworkstation
choco install -y vagrant-vmware-utility

# virtualbox
choco install -y --params "/ExtensionPack" virtualbox


# docker
choco install -y docker
choco install -y docker-cli
choco install -y docker-compose
choco install -y docker-machine
choco install -y docker-machine-vmwareworkstation
choco install -y docker-machine-vmware

# minikube
choco install -y minikube
choco install -y kubernetes-helm


# editor / IDE
choco install -y jetbrainstoolbox
choco install -y vscode
choco install -y vim-tux

# dev-tools
# choco install -y postman # insomnia 
choco install -y insomnia-rest-api-client
choco install -y zotero
choco install -y adobereader
choco install -y cloc
choco install -y plantuml
choco install -y graphviz
choco install -y poedit
choco install -y jq
choco install -y powertoys


# dev-fonts
choco install -y firacode
choco install -y cascadiafonts

# PHP
choco install -y composer

# nodejs
choco install -y npm
choco install -y yarn

# Muisc / Game
choco install -y spotify
choco install -y steam
choco install -y vlc
choco install -y sodaplayer

