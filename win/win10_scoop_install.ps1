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
scoop install aria2
scoop install wget curl telnet jq
scoop install fzf
scoop install ghq
scoop install ripgrep
scoop install uutils-coreutils
scoop install lsd
scoop install starship
scoop install gnupg

# add buckets
Write-Host "adding scoop-extras scoop-nerd-fonts  bucket..."
scoop bucket add extras
scoop bucket add nerd-fonts

# Editor
#scoop install neovim
#scoop install extras/vscode

# misc
scoop install screentogif

# nerdfonts
scoop install nerd-fonts/JetBrainsMono-NF

