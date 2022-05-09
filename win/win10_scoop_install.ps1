#Requires -Version 5

Write-Host "installing scoop..."
if (Get-Command scoop -ErrorAction SilentlyContinue)
{
    Write-Host "scoop is already installed"
} else {
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}

# enabale execution policy
Set-ExecutionPolicy RemoteSigned -scope CurrentUser


# Basic tools
scoop install 7zip git git-lfs sudo
scoop install wget curl telnet ag jq
scoop install aria2

# add buckets
Write-Host "adding scoop-extras scoop-nonportable scoop-nerd-fonts  bucket..."
scoop bucket add extras
scoop bucket add nonportable
scoop bucket add nerd-fonts
scoop bucket add java


# install browser globally
scoop install extras/firefox


# Editor
scoop install vim
#scoop install extras/notepadplusplus
scoop install extras/vscode


# misc
# scoop install extras/windows-terminal extras/vcredist2019 
scoop install extras/powertoys
scoop install extras/steam
scoop install extras/vlc
scoop install extras/foxit-reader
scoop install extras/oh-my-posh
scoop install screentogif



# Virtualbox / Docker
scoop install vagrant
scoop install nonportable/virtualbox-with-extension-pack-np
scoop install docker
scoop install minikube kubeadm kubectl kubelet


# Android Emulator
scoop install nonportable/bluestacks-np

# jdk and tools
scoop install java/openjdk
scoop install extras/sourcetrail

# uml tools
scoop install plantuml
scoop install graphviz


# jetbrains
scoop install extras/jetbrains-toolbox


# nerdfonts
sudo scoop install nerd-fonts/JetBrains-Mono

# python and tools
scoop install python
pip install httpie
pip install translate-toolkit
