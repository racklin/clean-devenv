![OSX iTerm2 screenshot](./images/screenshot-1.png)

# Rack Lin's applications for devenv

**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

## Prerequisites
Make sure you have installed all of the following prerequisites on your development machine:

### OSX
- [Homebrew](https://brew.sh/)
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

  Install xcode:
  ```
  xcode-select --install
  ```

  Install Rosetta 2 for M1 
  ```
  softwareupdate --install-rosetta
  ```

### Windows
- [Scoop](https://scoop.sh/)
  ```
  > Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
  > Invoke-WebRequest get.scoop.sh | Invoke-Expression
  ```
- [Chocolatey](https://chocolatey.org/)
  ```
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
  ```

### Windows WSL2
Enabling Windows Subsystem for Linux.
REF: (https://docs.microsoft.com/en-us/windows/wsl/install-win10)

Open PowerShell as administrator and enter this command:
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

#### Enabling Virtual Machine
Open PowerShell as administrator and enter this command:
```
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform 
```

#### Downloading and installing WSL2
Download the WSL2 Kernel update
[https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)
```
Invoke-WebRequest -Uri https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi -UseBasicParsing
```
And run the installer `wsl_update_x64.msi`.

#### Setting WSL2 as default
```
wsl --set-default-version 2
```

#### Install Distro with winget
```
winget install Canonical.Ubuntu
```


## How to use

### OSX
Install base apps:
```
brew bundle install --file=Brewfile-base
```

Install devtools:
```
brew bundle install --file=Brewfile-devtools
```

Install apps from Mac App Store:
```
brew bundle install --file=brewfile-mas
```

Microsoft and Entertainment
```
brew bundle install --file=brewfile-microsoft
brew bundle install --file=brewfile-entertainment
```

### Win10
Install base apps with `winget`:
```
winget import -i winget_base.json
```

Install other base apps with `scoop`:
```
.\win10_scoop_install.ps1
```

Install devtools:
```
winget import -i winget_devtools.json
```

Meeting Tools and Entertainment Apps
```
winget import -i winget_meeting.json
winget import -i winget_entertainment.json
```

## About me

- [Twitter](https://twitter.com/racklin)
- [github](https://github.com/racklin)
