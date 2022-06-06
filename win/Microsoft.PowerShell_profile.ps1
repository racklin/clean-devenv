# Functions
Function ghqcd {Set-Location $(ghq.exe list --full-path | fzf.exe)}

# Alias
Set-Alias ls "lsd"


# starship shell
Invoke-Expression (&starship init powershell)
