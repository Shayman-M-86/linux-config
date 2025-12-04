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

## 4. Install ohmyzsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 5. Install ZAP (Zsh plugin manager)

```bash
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) 
```

## 6. Clone your Zsh dotfiles

```bash
mkdir -p ~/.dotfiles
git clone https://github.com/Shayman-M-86/linux-config ~/.dotfiles
```

## 7. Symlink your Zsh config files

```bash
rm -f ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
```

## 8. Source your .zshrc file

```bash
source ~/.zshrc
```

## 9. Final Notes

[Powerlevel10k](https://github.com/romkatv/powerlevel10k) requires you to source your `.zshrc` file to apply the changes.

## 10. Terminal Fonts

Install fonts onto the terminal:

[Fira Code](https://github.com/tonsky/FiraCode?tab=readme-ov-file)

[font gallery](https://www.nerdfonts.com/font-downloads)

## Docker Test Build

```bash
docker build -t ubuntu-zsh-ssh .
```

```bash
docker run -d --name ubuntu-zsh -p 2222:22 ubuntu-zsh-ssh
```

## SSH into the container

```bash
ssh root@localhost -p 2222
# password: password123
```

## one line install command

remove sudo if not needed

```bash
sudo apt update && sudo apt upgrade -y && \
sudo apt install -y build-essential curl wget git vim zsh fzf && \
chsh -s $(which zsh) && \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && \
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) && \
mkdir -p ~/.dotfiles && \
rm -rf ~/.dotfiles && \
git clone https://github.com/Shayman-M-86/linux-config ~/.dotfiles && \
rm -f ~/.zshrc && \
ln -s ~/.dotfiles/.zshrc ~/.zshrc && \
ln -sf ~/.dotfiles/.p10k.zsh ~/.p10k.zsh && \
exec zsh
```

## one line install command (no sudo)

```bash
apt update && apt upgrade -y && \
apt install -y build-essential curl wget git vim zsh fzf && \
chsh -s $(which zsh) && \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && \
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) && \
mkdir -p ~/.dotfiles && \
rm -rf ~/.dotfiles && \
git clone https://github.com/Shayman-M-86/linux-config ~/.dotfiles && \
rm -f ~/.zshrc && \
ln -s ~/.dotfiles/.zshrc ~/.zshrc && \
ln -sf ~/.dotfiles/.p10k.zsh ~/.p10k.zsh && \
exec zsh
```

## some repositories of plug insurance

- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [zap-zsh](https://github.com/zap-zsh/zap)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [fzf-tab](https://github.com/Aloxaf/fzf-tab)
- [fzf](https://github.com/junegunn/fzf)
