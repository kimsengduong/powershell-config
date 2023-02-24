# bash

sudo apt update -y
sudo apt install wget -y

# Download and Install oh-my-posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Setup Theme
for zshrc_file in ~/.zshrc; do
    if ! grep -qF 'eval "$(oh-my-posh init zsh --config ~/powershell-config/oh-my-posh.geekie.json)"' $zshrc_file; then
        echo 'eval "$(oh-my-posh init zsh --config ~/powershell-config/oh-my-posh.geekie.json)"' >> $zshrc_file
    fi
done
