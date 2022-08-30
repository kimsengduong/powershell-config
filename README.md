# Powershell-Config

### Download PowerShell 7

[Powershell Download](https://github.com/PowerShell/PowerShell)

### Run PWSH (PowerShell 7) as Admin

### Install Oh My Posh

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
```

### Clone Config

```powershell
git clone git@github.com:duongkimseng/powershell-config.git
```

### Copy file "oh-my-posh.geekie.json" to POSH_THEMES_PATH

```powershell
cp .\powershell-config\oh-my-posh.geekie.json  $env:POSH_THEMES_PATH
```

### Setup Default Profile

```powershell
notepad $PROFILE.AllUsersAllHosts
```

### Paste this script into the Profile

```powershell
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/oh-my-posh.geekie.json" | Invoke-Expression
```

```powershell
if (!(Test-Path -Path $PROFILE)) { New-Item -ItemType File -Path $PROFILE -Force }
Start-Process powershell -Verb runAs
```
