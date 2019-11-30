# Set-ExecutionPolicy RemoteSigned
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster


# vagrant
$ENV:VAGRANT_DEFAULT_PROVIDER = "vmware_desktop"

#
# docker-machine
#
# Run this command to configure your shell:
& "C:\ProgramData\chocolatey\lib\docker-machine\bin\docker-machine.exe" env | Invoke-Expression
