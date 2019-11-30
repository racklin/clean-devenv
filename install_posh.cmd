# INSTALL OH-MY-POSH
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

# To enable the engine edit your PowerShell profile:
if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }

# COPY PROFILE
copy Microsoft.PowerShell_profile.ps1 $PROFILE

# edit PROFILE
notepad $PROFILE
