#
# Enable WSL
# 
# REF: https://docs.microsoft.com/en-us/windows/wsl/install-win10
#
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform 

#
# Download wsl-kenerlupdate
# https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
#

# Set default version
wsl --set-default-version 2
