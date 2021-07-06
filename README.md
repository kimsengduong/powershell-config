# Powershell-Config

```bash
Install-Module oh-my-posh -Scope AllUsers
Import-Module oh-my-posh
```

```bash
mkdir ~\Documents\WindowsPowerShell\oh-my-posh-themes
```

```bash
cp .\oh-my-posh.geekie.json ~\Documents\WindowsPowerShell\oh-my-posh-themes
```

```bash
notepad $PROFILE.AllUsersAllHosts
```

```bash
Set-PoshPrompt -Theme ~\Documents\WindowsPowerShell\oh-my-posh-themes\oh-my-posh.geekie.json
```