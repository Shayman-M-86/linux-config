# Ubuntu Setup Script (Manual Commands)

Run these commands on a fresh Ubuntu install to set up the system.

---

## 1. Update System

```bash
sudo apt update
sudo apt upgrade -y
```

## 2. Install Essential Packages

```bash
sudo apt install -y build-essential \ 
curl \
wget \
git \
vim \
zsh 
```

## 3. Make Zsh the default shell

```bash
chsh -s $(which zsh)
```

## 4. Install ZAP (Zsh plugin manager)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) 
```

## 5. Clone your Zsh dotfiles

```bash
mkdir -p ~/.dotfiles
git clone https://github.com/Shayman-M-86/linux-config ~/.dotfiles
```

## 6. Symlink your Zsh config files

```bash

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
```

## 7. Source your .zshrc file

```bash
source ~/.zshrc
```

## 8. Final Notes

[Powerlevel10k](https://github.com/romkatv/powerlevel10k) requires you to source your `.zshrc` file to apply the changes.

## 9. Terminal Fonts

Install fonts onto the terminal:

[Fira Code](https://github.com/tonsky/FiraCode?tab=readme-ov-file)

[font gallery](https://www.nerdfonts.com/font-downloads)
